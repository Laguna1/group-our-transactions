require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'validations to test' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(20) }
  end
  describe 'associations to test' do
    it { should belong_to(:user).required }
    it { should have_many(:transactions) }
  end
end
