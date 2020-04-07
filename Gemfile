source('https://rubygems.org')
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby('2.6.5')

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem('rails', '~> 6.0.2', '>= 6.0.2.2')

# Helps store data
gem('activestorage')
# Reduces boot times through caching; required in config/boot.rb
gem('bootsnap', require: false)
# Fix n+1 issue
gem('bullet')
# Upload file to Claudinary server
gem('cloudinary')
# Configure User interface
gem('devise')
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem('jbuilder')
# Allow to create queries in Rails
gem('jquery-rails')
# Use Puma as the app server
gem('puma')
# Use SCSS for stylesheets
gem('sass-rails')
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem('turbolinks')
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem('webpacker')

group :development, :test do
   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Create a seed in testing db
  gem 'factory_bot_rails'
  # Test Rails
  gem 'rspec-rails'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Extention of Spring
  gem 'spring-watcher-listen'
  # don't know yet
  gem 'web-console'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
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
  # Easy installation and use of web drivers to run system tests with browsers
end

group :production do
  # Add a Postgrade server
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem('tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby])
