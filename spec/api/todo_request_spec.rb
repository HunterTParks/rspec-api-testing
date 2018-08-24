require 'rails_helper'

RSpec.describe "todo", :type => :request do
  context "Get todo#Index" do
    before do
      get "/todo"
    end
    it "returns a successful response" do
      expect(response).to have_http_status(200)
    end
    it "returns a list of Todos"
  end
end
