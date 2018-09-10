require 'rails_helper'

RSpec.describe "Group Model", type: :model do
  context "In general, it...." do
    it "can have users added to group"
    it "can have todos added to group"
  end

  context "WHen a new group is created it..." do
    it "is valid with valid attributes" do
      expect(Group.new(name: "My group", description: "This is my group")).to be_valid
    end
    it "is not valid without a title" do
      expect(Group.new(name: nil, description: "This group doesn't have a name")).to_not be_valid
    end
  end
end
