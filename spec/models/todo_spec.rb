require 'rails_helper'

RSpec.describe Todo, :type => :model do
  context "When a new Todo item is created it..." do
    it "is valid with valid attributes" do
      expect(Todo.new).to be_valid
    end
  end
  it "is not valid without a title"
  it "is not valid without a text body"
end
