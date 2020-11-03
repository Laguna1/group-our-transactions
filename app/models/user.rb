class User < ApplicationRecord
  has_many :groups
  has_many :transactions
  has_many :external_transactions

  validates :username, presence: true, uniqueness: true, length: { maximum: 10 }
  validates :email, presence: true
end
