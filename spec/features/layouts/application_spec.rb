require 'rails_helper'

RSpec.describe "Layouts Applicaiton", type: :feature do
  describe "The navigation bar" do
    before { visit "/" }
    it "should have multiple functioning default links" do
      within("#primary-navigation") do
        expect(page).to have_link("Home", href: "/")
        expect(page).to have_link("All Items", href: "/items")
        expect(page).to have_link("Merchants", href: "/merchants")
        expect(page).to have_link("Cart: 0", href: "/cart")
        expect(page).to have_link("Login", href: "/login")
        expect(page).to have_link("Register", href: "/register")
      end
    end
  end
end