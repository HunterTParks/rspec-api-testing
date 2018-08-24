require 'rails_helper'

RSpec.describe "todo", :type => :request do
  context "Get todo#Index" do
    before do
      get "/index"
    end
    it "returns a successful response"
    it "returns a list of Todos"
  end
end
