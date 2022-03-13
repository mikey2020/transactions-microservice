class TransactionsController < ApplicationController
  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save!
      render json: @transaction  
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

  private

  def transaction_params
    params.require(:transaction).permit(:customer_id, :input, :output, :date_of_transaction)
  end
end
