class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
  validates :email, presence: true, uniqueness: true
end
