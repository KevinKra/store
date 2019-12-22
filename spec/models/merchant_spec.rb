require 'rails_helper'

RSpec.describe Merchant, type: :model do
  describe "Merchant Model Validations" do

    context "validations" do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:address) }
      it { should validate_presence_of(:city) }
      it { should validate_presence_of(:state) }
      it { should validate_presence_of(:zip) }
    end
  end

  describe "Merchant Model Relationships" do
    it { should have_many(:items) }
  end
end