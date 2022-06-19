require 'rails_helper'

describe "the add a product process" do
  before(:each) do
    user = User.create!(:email => 'testy@test.com', :password => 'Password@123', :admin => true)
    login_as(user, :scope => :user)
  end

  it "adds a new product" do
    visit products_path
    click_link 'add product'
    fill_in 'Name', :with => 'mango blasters'
    fill_in 'Price', :with => '10.99'
    select "Italy", :from =>"product[country_of_origin]"
    click_on 'Create Product'
    click_on "All products"
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Mango Blasters'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end

  it "doesn't allow non-admin users access to create products" do
    user2 = User.create!(:email => 'testier@test.com', :password => 'Password@123')
    login_as(user2, :scope => :user)
    visit home_path
    expect(page).to_not have_content 'add product'
    #this link is hidden if not an admin.
  end

  it "doesn't allow non-admin users access to create products" do
    user2 = User.create!(:email => 'testier@test.com', :password => 'Password@123')
    login_as(user2, :scope => :user)
    visit new_product_path
    expect(page).to have_content "Welcome to Mario's Market"
    expect(page).to have_content "Sorry, this requires admin privileges."
    #redirects to homepage if not an admin.
  end
end