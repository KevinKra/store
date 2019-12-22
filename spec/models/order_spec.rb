require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "Order Model Validations" do

    context "validations" do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:address) }
      it { should validate_presence_of(:city) }
      it { should validate_presence_of(:state) }
      it { should validate_presence_of(:zip) }
    end
    
  end

  describe "Order Model Relationships" do
    it { should belong_to(:user) }

    # item_orders m-t-m relationship
    it { should have_many(:item_orders) }
    it { should have_many(:items).through(:item_orders) }
  end
end