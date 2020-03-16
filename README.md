Recipe Management Application

Recipe Management Application is simple web application written in ruby on rails framework.

Directions on how to deploy

System dependencies

gem 'rails', '~> 5.1.7'
gem 'mysql2'
gem 'simple_form', '~> 5.0', '>= 5.0.2'
gem 'puma', '~> 3.7'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'sass-rails', '~> 5.0'
gem 'cocoon'
gem 'jquery-rails'
gem 'carrierwave', '~> 2.0'
gem 'devise'
gem 'jquery-datatables'
gem 'ajax-datatables-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

Configuration

I used erb to write the code.

Database creation

I use mysql2 for test and development.

Database initialization

Add gem 'mysql2' on gemfile
Add under config/database.yml file

development:
  adapter: mysql2
  host: localhost
  username: root
  password: password
  database: Recipe_Management_Application_dev
 
test:
  adapter: mysql2
  host: localhost
  username: root
  password: password
  database: Recipe_Management_Application_test 

production:
  adapter: mysql2
  host: localhost
  username: root
  password: password
  database: Recipe_Management_Application_prod 

How to run the test suite

bundle exec rspec

Services (job queues, cache servers, search engines, etc.)

None - yet

Deployment instructions

Install all the gems and bundle bundle install
 To create database run rake db:create
To create model rails g model Model_name attribute_with_datatype
Run rake db:migrate
To create controller rails g controller controller_name 
Set the carrierwave gem to upload image
Cocoon gem is use for Nested forms
Datatable has ability to paginate, sort, and search html tables
Clone the repo and cd into Recipe_Management_Application
Git add .
Git commit -m “comment”
Git push
Run rails server and go to locolhost:3000





