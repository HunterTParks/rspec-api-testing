require 'rails_helper'

RSpec.describe "DELETE Todo items", :type => :request do
  context "When a user submits a request it...." do
    it "returns an http response (204)" do
      FactoryBot.create(:todo)
      delete "/todo/1"
      expect(response).to have_http_status(204)
    end
  end

  context "When a request is invalid" do
    it "returns an http response (404)" do
      delete "/todo/1"
      expect(response).to have_http_status(404)
    end
  end
end
