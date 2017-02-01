source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Custom Gems
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

# Fonts and Icons for the Site
gem "font-awesome-rails"

# Control of users and login
gem 'devise'

# Allow creation of forms
gem 'simple_form'

# Present HTML content in text fields
gem "auto_html"

# Allows attachments 
gem 'paperclip'

# To convert dates to the local time
gem 'local_time'

# To communicate with Amazone Storage
gem 'aws-sdk', '< 2.0'

# To put friendly ids in the URL
gem 'friendly_id'

# To use a rich text editor
gem 'ckeditor'

# To enumerate list values
gem 'enum_help'

gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true

gem 'momentjs-rails', '~> 2.9', :github => 'derekprior/momentjs-rails'

# To see the statistics
# gem 'newrelic_rpm'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  	# Call 'byebug' anywhere in the code to stop execution and get a debugger console
  	gem 'byebug'

  	# Access an IRB console on exception pages or by using <%= console %> in views
  	gem 'web-console', '~> 2.0'

  	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  	gem 'spring'

	# Use sqlite3 as the database for Active Record
	gem 'sqlite3'

	# Allows to store variables in development environment
	gem 'dotenv-rails'
end

group :production do
	gem 'rails_12factor'
	gem 'pg'
end

