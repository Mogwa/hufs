source 'https://rubygems.org'

#우리가 설치한 잼은 여기서부터 설명과 함께

#admin
gem 'rails_admin'
#회원가입 및 유저관리
gem 'devise'
gem 'devise-i18n'
#부트스트랩
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
#devise + bootstrap
#rails generate devise:views:bootstrap_templates 써야함
gem 'devise-bootstrap-views', '~> 1.0'
#form_for 를 조금 더 편리하게 바꿔주는 잼
#rails generate simple_form:install --bootstrap 써야함
gem 'simple_form', '~> 4.0', '>= 4.0.1'
gem 'client_side_validations'
gem 'client_side_validations-simple_form'
#bootstrap form
gem "bootstrap_form", ">= 4.0.0.alpha1"
#dropdownlist dependency
gem 'dependent-fields-rails'
gem 'underscore-rails'
gem 'jquery-turbolinks'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'i18n', '~> 1.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  #데이터베이스 관리
  gem 'rails_db'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  group :production do
    gem 'pg'
  end

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

