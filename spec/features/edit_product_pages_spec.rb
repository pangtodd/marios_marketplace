require 'rails_helper'

describe "edit a product process" do
  before(:each)do
  user = User.create!(:email => 'testy@test.com', :password => 'Password@123', :admin => true)
  product = Product.create!(:name => 'Mango Blasters', :price => 2.69, :country_of_origin => "France")
  login_as(user, :scope => :user)
  visit products_path
  end

  it "edits an existing product" do
    visit products_path
    click_on "All products"
    click_on('Mango Blasters', match: :first)
    click_on('Edit')
    fill_in 'Name', :with =>'mega mango blasters'
    fill_in "Price", :with =>12.99
    select "United States of America", :from =>"product[country_of_origin]"
    click_on 'Update Product'
    click_on "All products"
    expect(page).to have_content 'Mega Mango Blasters'
  end

  it "provides confirmation when product updated" do
    visit products_path
    click_on "All products"
    click_on('Mango Blasters', match: :first)
    click_on('Edit')
    fill_in 'Name', :with =>'mega mango blasters'
    fill_in "Price", :with =>12.99
    select "United States of America", :from =>"product[country_of_origin]"
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
  end

  it "is able to delete an existing product" do
    visit products_path
    click_on "All products"
    click_on('Mango Blasters', match: :first)
    click_on('Delete')
    expect(page).to_not have_content "Mango Blasters"
  end

  it "returns an error if a field is blank." do
    visit products_path
    click_on "All products"
    click_on('Mango Blasters', match: :first)
    click_on 'Edit'
    fill_in "Name", :with=> ""
    click_on 'Update Product'
    expect(page).to have_content "Name can't be blank"
  end

end