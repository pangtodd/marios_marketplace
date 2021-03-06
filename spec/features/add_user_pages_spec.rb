require 'rails_helper'

describe "add a user" do
  it "allows a user to sign up and create an account" do
    visit home_path
    click_on "sign up"
    fill_in "user_email", :with=>"BobbyFromDaBlock@bobby.com"
    fill_in "user_password", :with=>"Password@123"
    fill_in "user_password_confirmation", :with=>"Password@123"
    click_button "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content "bobbyfromdablock@bobby.com: sign out"
  end

  it("validates password to contains at least a lowercase letter, a uppercase, a digit, a special char and 8+ chars") do
    visit home_path
    click_on "sign up"
    fill_in "user_email", :with=>"BobbyFromDaBlocksr@bobby.com"
    fill_in "user_password", :with=>"password123"
    fill_in "user_password_confirmation", :with=>"password123"
    click_button "Sign up"
    expect(page).to have_content "Password must contain at least a lowercase letter, a uppercase, a digit, a special character and 8+ characters"
  end

  it "allows a registered user to login." do
    user = User.create!(:email => 'testy@test.com', :password => 'Password@123')
    visit home_path
    click_on "sign in"
    fill_in "user_email", :with => "testy@test.com"
    fill_in "user_password", :with=> "Password@123"
    click_button "Log in"
    expect(page).to have_content "Signed in successfully."
    expect(page).to have_content "testy@test.com: sign out"
  end
end