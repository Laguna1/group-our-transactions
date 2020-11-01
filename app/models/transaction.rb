class Transaction < ApplicationRecord
  belongs_to :group
  belongs_to :user
  
  has_many :groups

  def total_transaction
    Transaction.sum(:amount)
  end
end
