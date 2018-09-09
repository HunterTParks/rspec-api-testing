require 'rails_helper'

RSpec.describe "Get all group routes", type: :request do
  context "When a resource is found it..." do
    it "should return an http response (200)" do
      expect(response).to have_http_status(200)
    end
  end

  context "When a resource is not found it..." do
    it "should return an http response (204)" do
      expect(response).to have_http_status(204)
    end
  end
end
