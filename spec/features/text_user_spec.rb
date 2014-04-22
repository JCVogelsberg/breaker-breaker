require "spec_helper"

describe "text user" do
  describe "sign up" do
    it "creates a new user" do
      visit "/users/sign_up"
      click_link "Sign up"
      fill_in "Email", :with => "joebob@derp.net"
      fill_in "user_password", :with => "12345678"
      fill_in "user_password_confirmation", :with => "12345678"
      click_button "Sign up"
      page.should have_content "Welcome! You have signed up successfully."
    end
  end

  describe "login" do
    it "logs in an existing user" do
      visit "/users/sign_up"
      click_link "Sign up"
      fill_in "Email", :with => "slomo@yahoo.com"
      fill_in "user_password", :with => "12345678"
      fill_in "user_password_confirmation", :with => "12345678"
      click_button "Sign up"
      page.should have_content "Logged in as slomo@yahoo.com"
    end
  end

  describe "Logout" do
    it "logs out an existing user" do
      visit "/users/sign_up"
      click_link "Sign up"
      fill_in "Email", :with => "slomo@yahoo.com"
      fill_in "user_password", :with => "12345678"
      fill_in "user_password_confirmation", :with => "12345678"
      click_button "Sign up"
      click_link "Logout"
      page.should have_content "Signed out successfully."
    end
  end
end



