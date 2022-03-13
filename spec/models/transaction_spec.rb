require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it "is invalid without the expected attributes" do
    expect(Transaction.new).to be_invalid
  end

  it "is not valid without a customer_id"
  it "is not valid without an input"
  it "is not valid without an output"
  it "is not valid without an date_of_transaction"
end
