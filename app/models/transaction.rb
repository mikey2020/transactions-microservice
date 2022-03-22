class Transaction < ApplicationRecord
  validates :customer_id, presence: true
  validates :date_of_transaction, presence: true
  validates :input, presence: true
  validates :output,presence: true
  validates :state, presence: true
end
