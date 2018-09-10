require 'rails_helper'
require 'login_helper'
require 'create_user_helper'

RSpec.describe "Get all group routes", type: :request do
  before(:each) do
    create_user
  end
  context "When a resource is found it..." do
    it "should return an http response (200)" do
      FactoryBot.create(:group)
      login
      auth_params = get_auth_params(response)
      get "/group", headers: auth_params
      expect(response).to have_http_status(200)
    end
  end

  context "When a resource is not found it..." do
    it "should return an http response (204)" do
      login
      auth_params = get_auth_params(response)
      get "/group", headers: auth_params
      expect(response).to have_http_status(204)
    end
  end
end
