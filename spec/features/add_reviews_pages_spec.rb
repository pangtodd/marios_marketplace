require 'rails_helper'

describe "add a review to a product" do
  before(:each)do
    user = User.create!(:email => 'testy@test.com', :password => 'password123')
    product = Product.create!(:name => 'slim jims', :price => 2.69, :country_of_origin => "United States of America")
    login_as(user, :scope => :user)
    visit products_path
  end
  it "creates a review for an existing product" do
    click_on "All products"
    click_on('Slim Jims', match: :first)
    click_on "Add a review"
    fill_in "Author", :with=> "Skinny Pete"
    fill_in "Content body", :with=> "I dunno, I'd like them to to be a little less slim. I'd consider buying a Thick Jim."
    fill_in "Rating", :with=> 3
    click_on "Create Review"
    expect(page).to have_content 'Review successfully added!'
    expect(page).to have_content '3 stars, review by Skinny Pete'
  end
  it "gives an error when no name is entered" do
    visit products_path
    click_on "All products"
    click_on('Slim Jims', match: :first)
    click_on 'Add a review'
    click_on "Create Review"
    expect(page).to have_content "Author can't be blank"
  end

end