source 'https://rubygems.org'

gem 'rails', '3.2.0'

# Database drivers:
# gem 'sqlite3'
gem 'mongoid'

gem 'haml-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

group :development do
  # Use unicorn as the web server
  gem 'unicorn'
end

group :development, :test do
  gem 'pry'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails'
  gem 'cucumber-rails'
end

group :test do

end

group :production do
  gem 'pg' # for Heroku
end
