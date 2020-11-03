require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations to test' do
    it { should validate_presence_of(:username) }
    it { should validate_length_of(:username).is_at_most(10) }
    it { should validate_uniqueness_of(:username) }
  end
  describe 'associations to test' do
    it { should have_many(:transactions) }
    it { should have_many(:groups) }
  end
end