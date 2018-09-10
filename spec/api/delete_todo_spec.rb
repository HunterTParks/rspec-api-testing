require 'rails_helper'
require 'login_helper'
require 'create_user_helper'

RSpec.describe "DELETE Todo items", :type => :request do
  before(:each) do
    # Create users and then skip the email confirmation before
    # saving into the database. 'create_user' is from the
    # helper 'create_user_helper'
    create_user
    login
  end
  context "When a user submits a request it...." do
    it "returns an http response (204)" do
      FactoryBot.create(:group)
      FactoryBot.create(:todo)
      auth_params = get_auth_params(response)
      delete "/group/:group_id/todo/1", headers: auth_params
      expect(response).to have_http_status(204)
    end
  end

  context "When a request is invalid" do
    it "returns an http response (404)" do
      auth_params = get_auth_params(response)
      delete "/group/:group_id/todo/1", headers: auth_params
      expect(response).to have_http_status(404)
    end
  end
end
