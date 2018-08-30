require 'rails_helper'

RSpec.describe "Get all todos route", :type => :request do
  context "When a resource is found it..." do
    let!(:todos) { FactoryBot.create_list(:todo, 20)}

    it "returns an http response (200)" do
      get "/todo"
      expect(response).to have_http_status(200)
    end
    it "returns a list of Todos" do
      get "/todo"
      expect(JSON.parse(response.body).size).to eq(20)
    end
  end

  context "When a resource is not found it..." do
    it "returns an http response (204)" do
      get "/todo"
      expect(response).to have_http_status(204)
    end
  end

  context "When a resource is not owned" do
    it "returns an http response (400)"
  end
end
