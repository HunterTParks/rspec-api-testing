require 'rails_helper'

RSpec.describe 'Post todo routes', :type => :request do
  before do
    post "/todo", params: { :title => 'Star Wars', :text => 'This is a texting text for Star wars'}
  end

  context "When a user submits a request it..." do
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
end
