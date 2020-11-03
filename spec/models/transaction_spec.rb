require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations to test' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
  end
  describe 'associations to test' do
    it { should belong_to(:user)}
    it { should belong_to(:group).optional}
  end
end