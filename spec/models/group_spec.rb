require 'rails_helper'

RSpec.describe "Group Model", type: :model do
  context "In general, it...." do
    it "can have users added to group"
    it "can have todos added to group"
  end

  context "WHen a new group is created it..." do
    it "is valid with valid attributes"
    it "is not valid without a title"
  end
end
