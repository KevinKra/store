require "rails_helper"

RSpec.describe "Users #new", type: :feature do
  user = {
    username: "Alec555",
    password: "password",
    password_confirmation: "password",
    first_name: "Alec",
    last_name: "Baldwin",
    street_address: "555 Baltimore Dr.",
    city: "Chicago",
    state: "Illinois",
    zip: 54544,
    email: "abaldwin@gmail.com",
  }
  before { visit "/register" }

  context "user registers with valid credentials" do
    before {
      fill_in :username, with: user[:username]
      fill_in :password, with: user[:password]
      fill_in :password_confirmation, with: user[:password_confirmation]
      fill_in :email, with: user[:email]
      fill_in :first_name, with: user[:first_name]
      fill_in :last_name, with: user[:last_name]
      fill_in :street_address, with: user[:street_address]
      fill_in :city, with: user[:city]
      fill_in :state, with: user[:state]
      fill_in :zip, with: user[:zip]
    }

    it "should be able to register an account" do
      click_on "Register Account"
      expect(current_path).to eq("/profile")
      within("#main-flash") do
        expect(page).to have_content("Welcome, #{user[:username] }. You are now registered and logged in.")
      end
      expect(page).to have_content("User Profile Page")
    end
  end

  context "user registers with invalid credentials" do
    before {
      fill_in :username, with: user[:username]
      fill_in :password, with: user[:password]
      fill_in :first_name, with: user[:first_name]
      fill_in :last_name, with: user[:last_name]
      fill_in :street_address, with: user[:street_address]
      fill_in :city, with: user[:city]
      fill_in :state, with: user[:state]
      fill_in :zip, with: user[:zip]
    }

    it "should not be able to register an account" do
      click_on "Register Account"
      expect(current_path).to eq("/register")
      within("#main-flash") do
        expect(page).to have_content("Email can't be blank")
      end
    end

    it "should not allow registration if password and password confirmation do not match" do
        fill_in :username, with: user[:username]
        fill_in :password, with: "one"
        fill_in :password_confirmation, with: "two"
        fill_in :email, with: user[:email]
        fill_in :first_name, with: user[:first_name]
        fill_in :last_name, with: user[:last_name]
        fill_in :street_address, with: user[:street_address]
        fill_in :city, with: user[:city]
        fill_in :state, with: user[:state]
        fill_in :zip, with: user[:zip]
        click_on "Register Account"
        expect(current_path).to eq("/register")
        within("#main-flash") do
          expect(page).to have_content("Password confirmation doesn't match Password")
        end
    end
  end
end