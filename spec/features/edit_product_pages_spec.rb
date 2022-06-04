require 'rails_helper'

describe "edit a product process" do
  before(:each)do
    visit products_path
    click_link 'Enter new product'
    fill_in 'Name', :with => 'mango blasters'
    fill_in 'Price', :with => 10.99
    select "Italy", :from =>"product[country_of_origin]"
    click_on 'Create Product'
  end
  it "edits an existing product" do
    visit products_path
    click_on('Mango Blasters', match: :first)
    click_on('Edit')
    fill_in 'Name', :with =>'mega mango blasters'
    fill_in "Price", :with =>12.99
    select "United States of America", :from =>"product[country_of_origin]"
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
    expect(page).to have_content 'Mega Mango Blasters'
  end
end