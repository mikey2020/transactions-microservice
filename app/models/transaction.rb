class Transaction < ApplicationRecord
  before_save :output_calc #{ output = input * 2 }

  validates :customer_id, presence: true
  validates :date_of_transaction, presence: true
  validates :input, presence: true
  #validates :output,presence: true
  validates :state, presence: true

  def output_calc
    self.output = self.input.to_i * 2
  end
end
