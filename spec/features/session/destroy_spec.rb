RSpec.describe "Session #destroy" do
  context "when loggin in user clicks the logout button" do
    let!(:user) { create(:user, :default_user) }
    before {
      visit "/login"
  
      within("#login-form") do
        fill_in :username, with: user.username
        fill_in :password, with: user.password
        click_on "Login"
      end
    }

    it "logs them out and displays a flash message" do
      click_on "Logout"
      expect(current_path).to eq("/")
      within("#primary-navigation") do
        expect(page).to have_content("Login")
        expect(page).to have_content("Register")
        expect(page).not_to have_content("Logout")
      end
    end

  end
end