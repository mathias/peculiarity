source 'https://rubygems.org'

gem 'rails', '3.2.3'

gem 'cancan'
gem 'devise'
gem 'haml-rails'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'pg'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'zurb-foundation'
end

group :development do
  gem 'heroku'
  gem 'heroku_san'
  gem 'pry'
end

group :development, :test do
  gem 'cucumber-rails'
  gem 'rspec-rails'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'spork-rails'
end

group :test do
  gem 'database_cleaner'
end
