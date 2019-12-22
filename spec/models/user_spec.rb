require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User Model Validations" do

    context "Validations" do
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

    context "Uniqueness" do
      it { should validate_uniqueness_of(:username) }
      it { should validate_uniqueness_of(:email) }
    end

  end
end