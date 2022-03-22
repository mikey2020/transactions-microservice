class AddStateColumnToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :state, :string, default: "created"
  end
end
