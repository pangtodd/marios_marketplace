# README
# Mario's Market (part I)

#### By Todd Pangilinan

An application which tracks products, and allows product reviews

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
Using Ruby on Rails and Postgres, this application allows a Mario's Market to manage products and maintain reviews of products. Both products and reviews are able to be created, read, updated, and deleted, demonstrating full CRUD capabilities. In designing this application, the following user stories were addressed:

* Admin users/store employees should be able to add, update and delete new products. 
 (You will not be expected to show the product's average rating. That's included in the further exploration section.)
* All users (employees and customers) should be able to click an individual product to see its detail page.
* All users should be able to add a review to a product.


## Setup/Installation Requirements

* If you don't have git installed on your machine, follow these [instructions.](https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github)
* Via your terminmal, navigate to the directory you want to store my files in.
* Clone my git hub directory by typing or cutting pasting: "git clone https://github.com/pangtodd/marios_marketplace.git" into your terminal
* To run this program, you must have Ruby 2.6.5 installed on your machine. If you do not, you can follow these instructions: [Mac](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-mac) or [PC](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-windows).
* Once you have the project downloaded, navigate to the root of the project in your terminal and type "bundle".
* you will also need Postgres installed on your machine. If you do not, you can follow these [instructions.](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-postgres) 
* You will also need to create a local database and test database, using the sql backup file "database_backup.sql", which should be included in the download from github. [Instructions on creating a database from a sql backup.](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/ruby-database-basics/backing-up-and-recreating-a-database)
* After the databases are established, type "rails s" into your terminal. This should launch Sinatra.
* Please note, this application was built with a Mac system. You may need to make adjustments (such as creating adding/hiding your Postgres password) if using a PC.
* In a browswer, type in "localhost:3000". You should be able to navigate like a normal website.

## Known Bugs

As of 6/4/22:
* multiple entries are allowed (ie, you can put a project or volunteer in more than once.)
* no other known bugs.
* If you notice other mistakes or bugs, please email pang.todd@gmail.com

## License

[MIT](https://opensource.org/licenses/MIT)
Copyright 2022 (c) Todd Pangilinan 


<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
