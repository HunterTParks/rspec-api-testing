require 'rails_helper'

RSpec.describe User, type: :model do
  context "In general, it..." do
    it { should belong_to(:group) }
  end
end
