source('https://rubygems.org')
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby('2.6.5')

# Helps store data
gem('activestorage')
# don't know yet
gem('bootsnap', require: false)
# Fix n+1 issue
gem('bullet')
# Upload file to Claudinary server
gem('cloudinary')
# Configure User interface
gem('devise')
# dont know yet
gem('jbuilder')
# Allow to create queries in Rails
gem('jquery-rails')
# Localhost server
gem('puma')
# App gem
gem('rails')
# Sass on Rails
gem('sass-rails')
# don't know yet
gem('turbolinks')
# don't know yet
gem('webpacker')

group :development, :test do
  # don't know yet
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Create a seed in testing db
  gem 'factory_bot_rails'
  # Test Rails
  gem 'rspec-rails'
  # Add sqlite params
  gem 'sqlite3'
end

group :development do
  # don't know yet
  gem 'listen'
  # don't know yet
  gem 'spring'
  # don't know yet
  gem 'spring-watcher-listen'
  # don't know yet
  gem 'web-console'
end

group :test do
  # don't know yet
  gem 'capybara'
  # don't know yet
  gem 'guard'
  # don't know yet
  gem 'guard-minitest'
  # don't know yet
  gem 'minitest'
  # don't know yet
  gem 'minitest-reporters'
  # don't know yet
  gem 'rails-controller-testing'
  # don't know yet
  gem 'selenium-webdriver'
  # don't know yet
  gem 'webdrivers'
  # don't know yet
end

group :production do
  # Add a Postgrade server
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem('tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby])
