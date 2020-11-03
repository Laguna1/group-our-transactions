class Transaction < ApplicationRecord
  belongs_to :group, optional: true
  belongs_to :user

  validates :name, :amount, presence: true

  def total_transaction
    Transaction.sum(:amount)
  end
end
