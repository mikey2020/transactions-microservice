class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :customer_id
      t.string :input
      t.string :output
      t.datetime :date_of_transaction

      t.timestamps
    end
  end
end
