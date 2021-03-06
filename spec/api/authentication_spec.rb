require 'rails_helper'
require 'login_helper'
require 'create_user_helper'

RSpec.describe "Authentication Requests", type: :request do
  before(:each) do
    # Create users and then skip the email confirmation before
    # saving into the database. 'create_user' is from the
    # helper 'create_user_helper'
    create_user
    FactoryBot.create_list(:todo, 20)
  end

  context "During User authentication it..." do
    it "returns an http response (401) when authenticated incorrectly" do
      get "/todo"
      expect(response).to have_http_status(401)
    end
    it "returns an access token when you authenticate correctly" do
      # 'login' is from the helper 'login_helper' and it sends a POST request
      # with user's login parameters created by FactoryBot
      login
      expect(response.has_header?('access-token')).to eq(true)
    end
    it "returns a token and grants user access to restricted page" do
      login
      # 'get_auth_params' is from the helper 'login_helper' and it
      # gets the authentication token from the login response. It
      # will then be put into a GET request so the user can receive the data.
      auth_params = get_auth_params(response)
      get "/todo", headers: auth_params
      expect(response).to have_http_status(200)
    end
  end
end
