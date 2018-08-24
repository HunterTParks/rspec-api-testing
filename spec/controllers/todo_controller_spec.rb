require 'rails_helper'

RSpec.describe TodoController, :type => :controller do
  before do
    subject = FactoryBot.create(:todo)
  end

  context "GET todo#index" do
    it "will return a list of items" do
      get :index
      expect(response).to be_successful
      expect(response.body).to eq(subject.response.body)
    end
  end

  context "GET todo#show" do
    it "will return one item"
  end
end
