source 'http://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.7', '>= 6.1.7.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'


# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.x'

# gem 'devise', '4.1.1'
gem 'devise', '~> 4.9'
# gem 'sidekiq', '~> 6.5', '>= 6.5.8'
gem 'sidekiq', '4.1.2'
gem 'redcarpet'
gem 'nokogiri'
gem 'paperclip'
gem 'pygments.rb', '~> 2.3', '>= 2.3.1'

# gem 'redis-activesupport', '5.0.1'
gem 'redis', '~> 3.2', '>= 3.2.1'
# gem 'redis', '~> 4.0'
gem 'redis-activesupport'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

group :development, :test do
  gem 'pry-rails'
#  gem 'factory_girl '
  gem "factory_bot_rails"
  gem 'capybara', '~> 2.0'
  gem 'rspec-rails', '~> 3.5.0'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'poltergeist', '1.6.0'
  gem 'dotenv-rails'
end

group :development do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler', '1.1.4'
  gem 'capistrano-rails', '1.1.3'
  gem 'capistrano-chruby'
end

gem "unicorn"

# Asset template engines
gem 'sass-rails', '>= 6'
gem 'coffee-script'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'simple_form', '~> 5.2'
# gem 'simple_form', '3.2.1'

gem 'jquery-rails'
gem 'pry'


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
