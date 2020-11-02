class Transaction < ApplicationRecord
  belongs_to :group, optional: true
  belongs_to :user

  has_many :groups

  validates :name, :amount, presence: true

  def total_transaction
    Transaction.sum(:amount)
  end
end
