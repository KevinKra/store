require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "Item Model Validations" do

    context "validations" do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:description) }
      it { should validate_presence_of(:price) }
      it { should validate_presence_of(:image) }
      it { should validate_presence_of(:active) }
      it { should validate_presence_of(:inventory) }
    end
  end

  describe "Item Model Relationships" do
    it { should have_many(:reviews) }
    # add merchant relation
    # add item_orders relation
  end
end