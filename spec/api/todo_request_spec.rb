require 'rails_helper'

RSpec.describe "Get/edit/delete todos", :type => :request do
  let!(:todos) { FactoryBot.create_list(:todo, 20)}

  context "Get todo#Index" do
    before do
      get "/todo"
    end
    it "returns a successful response" do
      expect(response).to have_http_status(200)
    end
    it "returns a list of Todos" do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  end
end
