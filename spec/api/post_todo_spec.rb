require 'rails_helper'
require 'login_helper'
require 'create_user_helper'

RSpec.describe 'Post todo routes', :type => :request do
  context "When a user submits a request it..." do
    before(:each) do
      create_user
      login
      FactoryBot.create(:group)
      auth_params = get_auth_params(response)
      post "/group/:group_id/todo", params: { :title => 'Star Wars', :text => 'This is a texting text for Star wars' }, headers: auth_params
    end

    it "returns an http response (200)" do
      expect(response).to have_http_status(200)
    end
    it "returns the title of Todo item" do
      expect(JSON.parse(response.body)['title']).to eq('Star Wars')
    end
    it "returns the text of Todo item" do
      expect(JSON.parse(response.body)['text']).to eq('This is a texting text for Star wars')
    end
  end

  context "When a request is invalid" do
    before(:each) do
      create_user
      login
      auth_params = get_auth_params(response)
      post "/group/:group_id/todo", params: { :title => 'Star Wars', :text => nil }, headers: auth_params
    end
    it "returns an http response (400)" do
      expect(response).to have_http_status(400)
    end
    it "returns a valid error message"
  end
end
