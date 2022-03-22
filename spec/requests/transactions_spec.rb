require "rails_helper"

RSpec.describe "Transactions", :type => :request do
  it "should create a transaction successfully" do
   post "/transactions", params: { transaction: {customer_id: "00", input: "4500", output: "30000"} }
   expect(response.status).to eq(201)  
  end

  it "should not create a transaction successfully" do
   post "/transactions", params: { transaction: {input: "4500", output: "30000"} }
   expect(response.status).to eq(422)  
  end
end
