class ExternalTransaction < ApplicationRecord
  belongs_to :user

  def total_ex
    ExternalTransaction.sum(:amount)
  end
end
