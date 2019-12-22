require 'rails_helper'

RSpec.describe ItemOrder, type: :model do
  describe "Item_Order Model Relationships" do
    it { should belong_to(:item) }
    it { should belong_to(:order) }
  end
end