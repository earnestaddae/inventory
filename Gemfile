source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 7.0.0"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem "faker", "~> 2.19"
gem "colorize", "~> 0.8.1"
gem "pagy", "~> 5.8", ">= 5.8.1" # for pagination
gem "image_processing", "~> 1.12", ">= 1.12.1" # image processing
gem "active_storage_validations", "~> 0.9.6" # for image validations

gem "brakeman" # checks gem for security vulnerabilities
gem "bundler-audit" # checks dependencies vulnerabilities


group :development, :test do
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
  gem 'factory_bot_rails', '~> 6.2'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'capybara', '~> 3.36'
  gem "web-console"
  gem 'selenium-webdriver', '~> 4.1'
end

