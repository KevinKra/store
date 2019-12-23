require 'rails_helper'

RSpec.describe "Welcome #index", type: :feature do
  before { visit "/" }
  it "should greet the user" do
    within ".page-template-1" do
      expect(page).to have_content("Welcome #index Page")
    end
  end
end