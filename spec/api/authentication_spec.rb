require 'rails_helper'

RSpec.describe "Authentication Requests", type: :request do
  before(:each) do
    @current_user = FactoryBot.create(:user)
    @client = FactoryBoy.create :client
  end

  context "During User authentication it..." do
    it "returns an http response (401) when authenticated incorrectly"
    it "returns an authentication code when you authenticate correctly"
    it "returns an http response (200) when you sign in"
    it "returns a token and grants user access to restricted page"
    it "returns an http response (402) when accessing a restricted page without an authentication token"
  end
end
