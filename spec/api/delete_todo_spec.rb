require 'rails_helper'

RSpec.describe "DELETE Todo items", :type => :request do
  before do
    FactoryBot.create(:todo)
    delete "/todo/1"
  end
  context "When a user submits a request it...." do
    it "returns an http response (204)" do
      expect(response).to have_http_status(204)
    end
  end

  context "When a request is invalid" do
    it "returns an http response (400)" do
      expect(response).to have_http_status(400)
    end
    it "returns a valid error message"
  end
end
