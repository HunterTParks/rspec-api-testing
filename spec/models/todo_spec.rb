require 'rails_helper'

RSpec.describe Todo, :type => :model do
  it "is valid with valid attributes"
  it "is not valid without a title"
  it "is not valid without a text body"
end
