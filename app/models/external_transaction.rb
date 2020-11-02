class ExternalTransaction < ApplicationRecord
  belongs_to :user

  validates :name, :amount, presence: true

  def total_ex
    ExternalTransaction.sum(:amount)
  end
end
