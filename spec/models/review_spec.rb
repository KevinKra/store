require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "Review Model Validations" do

    context "validations" do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:content) }
      it { should validate_presence_of(:rating) }
    end
    
  end

  describe "Review Model Relationships" do
    it { should belong_to(:item) }
    it { should belong_to(:user) }
  end
end