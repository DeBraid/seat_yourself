source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'bcrypt-ruby', '~> 3.0.0' #handles hashing the password before its stored in the database.
gem 'unicorn' #For production, it will run as Rack HTTP Server
gem 'haml' # My favorite View rendering engine.
gem 'thin' # Thin as local server instead of default Webrick.
gem 'better_errors'
gem 'binding_of_caller'

group :assets do
  gem 'sass-rails', '4.0.0'
  gem 'uglifier', '2.1.1'
  gem 'coffee-rails', '4.0.0'
  gem 'jbuilder', '1.0.2'
end

  gem 'jquery-rails', '3.0.4'
  gem 'turbolinks', '1.1.1'
  gem "haml-rails"
  gem 'gumby-framework'
  gem "modernizr-rails"

gem 'protected_attributes'

group :test, :development do
  gem 'sqlite3', '1.3.8' # The database used for development and testing environments.
  gem 'rspec-rails', '2.13.1' # RSpec as default testing framework.
  gem 'pry' # Using as default Interactive Ruby console instead of irb. Needs some configuration to be hooked as rails console.
  gem 'factory_girl_rails', '4.2.0' # The testing factory framework, used instead of the default Fixtures.
  gem 'database_cleaner', '<1.1.0' # Used to speed-up tests, in my case to encapsulate the tests into db transaction.
  gem 'awesome_print' #Used by Pry to pretty prints Ruby objects in full color exposing their internal structure with proper indentation.
  gem 'capybara' # for simulating the web interaction in the tests.
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec', '2.5.0' # To refresh and run the tests upon saving via rb-fsevent.
  gem 'spork-rails', '4.0.0' # The server to speed up tests, how?, see provided link.
  gem 'guard-spork' # Refreshes the spork server on changes, so that we don’t need to.
  gem 'spork'
  gem 'growl', '1.0.3'
  gem 'faker', '1.1.2'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.15.1' # My default database for production usage.
  gem 'rails_12factor', '0.0.2'
end

gem 'therubyracer', platforms: :ruby
# Use debugger
# gem 'debugger', group: [:development, :test]
