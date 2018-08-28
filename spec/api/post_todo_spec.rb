require 'rails_helper'

RSpec.describe 'Post todo routes', :type => :request do
  before do
    post "/todo", params: { :title => 'Star Wars', :text => 'This is a texting text for Star wars'}
  end

  context "When a user submits a request it..." do
    it "returns an http response (200)"
    it "returns the title of Todo item"
    it "returns the text of Todo item"
  end
end
