require 'rails_helper'

RSpec.describe TodoController, :type => :controller do
  context "GET /index" do
    before do
      get :index
    end

    it "will return a list of items" do
      item = Todo.new(title: "Clean the dishes", text: "Complete by 5 PM")
      expect(response.body).to eq(item)
    end
  end
end
