require 'rails_helper'

RSpec.describe "todo", :type => :request do
  let!(:todos) { FactoryBot.create_list(:todo, 20)}

  before do
    @todo = @todo.to_json
  end

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
