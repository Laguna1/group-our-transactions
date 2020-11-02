class Transaction < ApplicationRecord
  belongs_to :group
  belongs_to :user

  has_many :groups

  validates :name, :amount, :group_id, presence: true

  def total_transaction
    Transaction.sum(:amount)
  end
end
