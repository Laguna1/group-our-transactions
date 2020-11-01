class ExternalTransaction < ApplicationRecord
  belongs_to :user

  def total_ex
    Transaction.sum(:amount)
  end
end
