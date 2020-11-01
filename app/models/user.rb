class User < ApplicationRecord
  has_many :groups
  has_many :expenses

  validates :username, presence: true, uniqueness: true, length: { maximum: 10 }
end
