class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, :icon, presence: true
end
