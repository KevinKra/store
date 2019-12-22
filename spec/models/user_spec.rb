require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User Model Validations" do

    context "validations" do
      it { should validate_presence_of(:username) }
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:password) }
      it { should validate_presence_of(:first_name) }
      it { should validate_presence_of(:last_name) }
      it { should validate_presence_of(:street_address) }
      it { should validate_presence_of(:city) }
      it { should validate_presence_of(:state) }
      it { should validate_presence_of(:zip) }
      it { should validate_presence_of(:role) }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:username) }
      it { should validate_uniqueness_of(:email) }
    end

    describe "Review Model Relationships" do
      it { should have_many(:reviews) }
      # it { should have_many(:orders) }
    end
  end
end