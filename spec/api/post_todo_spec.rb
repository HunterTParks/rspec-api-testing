require 'rails_helper'

RSpec.describe 'Post todo routes', :type => :request do
  before do
    post "/todo"
  end
end
