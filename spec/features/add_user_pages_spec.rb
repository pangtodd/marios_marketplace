require 'rails_helper'

describe "add a user" do
  it "allows a user to sign up and create an account" do
    visit home_path
    click_on "sign up"
    fill_in "user_email", :with=>"BobbyFromDaBlock@bobby.com"
    fill_in "user_password", :with=>"password123"
    fill_in "user_password_confirmation", :with=>"password123"
    click_button "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content "bobbyfromdablock@bobby.com: sign out"
  end
end