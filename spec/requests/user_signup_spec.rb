require 'rails_helper'

RSpec.describe 'User Sign up', type: :request do
  describe 'GET /user_signup' do
    it 'creates new user' do
      get new_user_path
      expect(response).to have_http_status(200)
    end
  end
end