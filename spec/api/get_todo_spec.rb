require 'rails_helper'

RSpec.describe "Get all todos route", :type => :request do
  let!(:todos) { FactoryBot.create_list(:todo, 20)}
  before do
    get "/todo"
  end

  context "When a resource is found it..." do
    it "returns an http response (200)" do
      expect(response).to have_http_status(200)
    end
    it "returns a list of Todos" do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  end

  context "When a resource is not found it..." do
    it "returns an http response (400)"
  end

  context "When a user requests todo#Show it..." do
    before do
      get "/todo/1"
    end
    it "returns a successful response" do
      expect(response).to have_http_status(200)
    end
  end

  context "When a user requests todo#create it..." do
    before do
      get"/todo"
    end
    it "returns a successful response"  do
      expect(response).to have_http_status(200)
    end
    it "successfully creates a Todo item"
  end
end
