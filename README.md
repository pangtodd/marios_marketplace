# README
# Mario's Market (part I)

#### By Todd Pangilinan

An application which tracks products, and accepts users' reviews of products

## Technologies used:

* Ruby (developed with 2.6.5)
* Rails (developed with 5.2.8)
* RSPEC
* Capybara
* shoulda-matchers
* Pry
* markdown
* Postgres
* SQL


## Description:
Using Ruby on Rails and Postgres, this application allows a Mario's Market admin or customer to sign in and manage products and maintain reviews of products. Admins posess full CRUD capabilities for both products and reviews; signed in users can create reviews; all visitors (admins, signed-in users, or visitors not signed in) can view products and reviews. In designing this application, the following user stories were addressed:

* All users, logged in or not, should be able to see all products and reviews,
* All userss should be able to click an individual product to see its detail page.
* Users should be able to create an account and become verified/signed in users.
* Signed in users should be able to add a review to a product. (A product can have many comments.) This is the only CRUD functionality a verfied user can have.
* Admins/store employees should be able to edit and delete reviews 
* Admins should be able to log in and log out of the application.
* Admins should be able to add, update and delete products.
* Admins should be able to add reviews.
* Admins should have key permissions; other users don't have access to CRUD functionality (aside from creating a review).



## Setup/Installation Requirements

* If you don't have git installed on your machine, follow these [instructions.](https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github)
* Via your terminmal, navigate to the directory you want to store my files in.
* Clone my git hub directory by typing or cutting pasting: "git clone https://github.com/pangtodd/marios_marketplace.git" into your terminal
* To run this program, you must have Ruby 2.6.5 and Rails 5.2.0 installed on your machine. If you do not, you can follow these instructions: [Mac](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-mac) or [PC](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-windows).
* Once you have the project downloaded, navigate to the root of the project in your terminal and type "bundle install".
* you will also need Postgres installed on your machine. If you do not, you can follow these [instructions.](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-postgres). 
* In the terminal at the root of the project, type "Postgres" to make sure Postgres is running.
* Type "rake db:create"
* Type "rake db:migrate"
* Type "rake db:test:prepare"
* Type "rake db:seed" if you'd like the database populated with dummy/test info.
* Type "rails s" into your terminal. This should launch Rails.
* Please note, this application was built with a Mac system. You may need to make adjustments (such as creating adding/hiding your Postgres password, or using slightly different commands to launch Postgres) if using a PC.
* In a browswer, type in "localhost:3000". You should be able to navigate like a normal website.
* In your terminal, type in "rspec" to run established tests and make sure everything is still working as expected (all tests should pass.)

## Known Bugs

As of 6/4/22:
* multiple entries are allowed in reviews. If you go to edit a review and leave it as-is and hit enter, it will populate in the database again.
* Currency display is slightly off- the numbers are always accurate, but it doesn't always display final zeros. IE, 10.50 is displayed as 10.5. 
* no other known bugs.
* If you notice other mistakes or bugs, please email pang.todd@gmail.com

## License

[MIT](https://opensource.org/licenses/MIT)
Copyright 2022 (c) Todd Pangilinan 
