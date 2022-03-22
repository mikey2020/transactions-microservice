require "rails_helper"

Rspec.describe "Transactions", type: request do
  it "should create a transaction successfully" do
   post "/transactions", params: {customer_id: "00", input: "4500", output: "30000"}
   expect(response.status).to eq(201)  
  end
end
