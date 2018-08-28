require 'rails_helper'

RSpec.describe 'Post todo routes', :type => :request do
  before do
    post "/todo", params: { :title => 'Star Wars', :text => 'This is a texting text for Star wars'}
  end
end
