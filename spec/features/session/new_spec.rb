require 'rails_helper'

RSpec.describe "Session #new" do
  describe "user attempts to log in" do
    let!(:user) { create(:user, :default_user) }
    before { visit "/login" }

    context "the user has valid credentials" do
      before(:each) do
        within("#login-form") do
          fill_in :username, with: user.username
          fill_in :password, with: user.password
          click_on "Login"
        end
      end

      it "logs them in" do
        expect(current_path).to eq("/profile")
        within("#main-flash") do
          expect(page).to have_content("Welcome, #{user.username}.")
        end
      end

      it "updates the navbar" do
        within("#primary-navigation") do
          expect(page).to have_link("Logout", href: "/logout")
          expect(page).not_to have_link("Register")
          expect(page).not_to have_link("Login")
        end
      end
    end

    context "the user has invalid credentials" do

      xit "does not log them in" do

      end

      xit "provides a flash message stating missing information" do

      end
    end

    context "the user does not exist" do

    end

    context "all fields not entered" do

    end
  end
end