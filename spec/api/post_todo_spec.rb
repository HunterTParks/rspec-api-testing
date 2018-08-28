require 'rails_helper'

RSpec.describe 'Post todo routes', :type => :request do
  context "When a user submits a request it..." do
    before do
      post "/todo", params: { :title => 'Star Wars', :text => 'This is a texting text for Star wars'}
    end

    it "returns an http response (200)" do
      expect(response).to have_http_status(200)
    end
    it "returns the title of Todo item" do
      expect(JSON.parse(response.body)['title']).to eq('Star Wars')
    end
    it "returns the text of Todo item" do
      expect(JSON.parse(response.body)['text']).to eq('This is a texting text for Star wars')
    end
  end

  context "When a request is invalid" do
    before do
      post "/todo", params: { :title => 'Star Wars' }
    end
    it "returns an http response (400)"
    it "returns a valid error message"
  end
end
