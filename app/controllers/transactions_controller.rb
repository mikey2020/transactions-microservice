class TransactionsController < ApplicationController
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.date_of_transaction = Time.now
    if @transaction.valid?
      @transaction.save
      render json: @transaction, status: 201  
    else
      render json: { message: "Transaction not saved" }
    end
  end 

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.state = "paid"
    if @transaction.valid?
      @transaction.save
      render json: @transaction, status: 200
    else
      render json: { message: @transaction.errors }, status: 422
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:customer_id, :input, :output)
  end
end
