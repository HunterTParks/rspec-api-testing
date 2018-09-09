require 'rails_helper'

RSpec.describe Todo, :type => :model do
  context "In general, it..." do
    it { should belong_to(:group) }
  end

  context "When a new Todo item is created it..." do
    it "is valid with valid attributes" do
      expect(Todo.new(title: 'Star Wars', text: 'Is a good movie')).to be_valid
    end

    it "is not valid without a title" do
      item = Todo.new(title: nil)
      expect(item).to_not be_valid
    end

    it "is not valid without a text body" do
      item = Todo.new(text: nil)
      expect(item).to_not be_valid
    end
  end
end
