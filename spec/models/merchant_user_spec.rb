require 'rails_helper' 

RSpec.describe MerchantUser do
  it { should belong_to(:user) }
  it { should belong_to(:merchant) }
end