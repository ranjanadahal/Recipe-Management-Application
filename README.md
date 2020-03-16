# **Recipe Management Application**

Recipe Management Application is simple web application written in ruby on rails framework.

# **Directions on how to deploy**

## **System dependencies**

```
gem 'rails', '~> 5.1.7'<br/>
gem 'mysql2'<br/>
gem 'simple_form', '~> 5.0', '>= 5.0.2'<br/>
gem 'puma', '~> 3.7'<br/>
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'<br/>
gem 'sass-rails', '~> 5.0'<br/>
gem 'cocoon'<br/>
gem 'jquery-rails'<br/>
gem 'carrierwave', '~> 2.0'<br/>
gem 'devise'<br/>
gem 'jquery-datatables'<br/>
gem 'ajax-datatables-rails'<br/>
gem 'uglifier', '>= 1.3.0'<br/>
gem 'coffee-rails', '~> 4.2'<br/>
gem 'jbuilder', '~> 2.5'<br />

```

# **Configuration**

I used erb to write the code.

# **Database creation**

I use mysql2 for test and development.

# **Database initialization**

Add gem 'mysql2' on gemfile<br/>
Add under config/database.yml file<br/>
```
development:<br/>
  adapter: mysql2<br/>
  host: localhost<br/>
  username: root<br/>
  password: password<br/>
  database: Recipe_Management_Application_dev<br/>
 
test:<br/>
  adapter: mysql2<br/>
  host: localhost<br/>
  username: root<br/>
  password: password<br/>
  database: Recipe_Management_Application_test <br/>

production:<br/>
  adapter: mysql2<br/>
  host: localhost<br/>
  username: root<br/>
  password: password<br/>
  database: Recipe_Management_Application_prod <br/>
```
# **How to run the test suite**

bundle exec rspec

# **Services (job queues, cache servers, search engines, etc.)**

None - yet

# **Deployment instructions**

Install all the gems and bundle ``` bundle install ```<br/>
To create database run ``` rake db:create```<br/>
To create model ```rails g model Model_name attribute_with_datatype```<br/>
Run rake``` db:migrate```<br/>
To create controller``` rails g controller controller_name``` <br/>
Set the carrierwave gem to upload image<br/>
Cocoon gem is use for Nested forms<br/>
Datatable has ability to paginate, sort, and search html tables<br/>
Clone the repo and cd into Recipe_Management_Application<br/>
Git add .<br/>
Git commit -m “comment”<br/>
Git push<br/>
Run rails server and go to locolhost:3000<br/>





