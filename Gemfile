source 'https://rubygems.org'

gem 'rails', '>= 5.0', '< 5.1'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'

gem 'bootstrap-sass'

# Markdown
gem 'redcarpet', '~> 3.3.4'
gem 'rouge', '~> 1.8.0'

# login
gem 'devise'
gem 'devise-bootstrap-views'
gem 'cancancan'

# gem 'r5000_model', git: "git@github.com:Darchro/r5000_model.git", branch: 'master'
gem 'r5000_model', path: '/Users/fanwei/pp/r5000_model'

gem 'weixin_authorize'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'better_errors'
  gem 'awesome_print'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "capistrano", "~> 3.6",   require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-rails', '~> 1.1',   require: false
  gem 'capistrano-rvm',   require: false
end

group :test do
  gem 'ffaker'
  gem 'capybara', '~> 2.4.3'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'launchy', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
end
