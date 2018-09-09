require 'rails_helper'
require 'login_helper'
require 'create_user_helper'

RSpec.describe "Get all todos route", :type => :request do
  context "When a resource is found it..." do
    before(:each) do
      # Create users and then skip the email confirmation before
      # saving into the database. 'create_user' is from the
      # helper 'create_user_helper'
      create_user
      FactoryBot.create_list(:todo, 20)
      login
      auth_params = get_auth_params(response)
      get "/todo", headers: auth_params
    end
    it "returns an http response (200)" do
      expect(response).to have_http_status(200)
    end
    it "returns a list of Todos" do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  end

  context "When a resource is not found it..." do
    it "returns an http response (204)" do
      expect(response).to have_http_status(204)
    end
  end

  context "When a resource is not owned" do
    it "returns an http response (400)"
  end
end
