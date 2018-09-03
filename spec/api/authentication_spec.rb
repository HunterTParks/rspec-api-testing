require 'rails_helper'
require 'login_helper'

RSpec.describe "Authentication Requests", type: :request do
  before(:each) do
    # Create users and then skip the email confirmation before
    # saving into the database.
    @current_user = FactoryBot.build(:user)
    @current_user.skip_confirmation!
    @current_user.save!
  end

  context "During User authentication it..." do
    it "returns an http response (401) when authenticated incorrectly" do
      get "/todo"
      expect(response).to have_http_status(401)
    end
    it "returns an authentication code when you authenticate correctly" do
      # 'login' is from the helper 'login_helper' and it sends a POST request
      # with user's login parameters created by FactoryBot
      login
      expect(response.has_header?('access-token')).to eq(true)
    end
    it "returns an http response (200) when you sign in"
    it "returns a token and grants user access to restricted page"
    it "returns an http response (402) when accessing a restricted page without an authentication token"
  end
end
