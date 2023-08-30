source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false


# My gems

gem 'devise', '~> 4.9', '>= 4.9.2'
gem "punching_bag"
gem 'ransack', '~> 4.0'
gem "tailwindcss-rails", "~> 2.0"
gem 'friendly_id', '~> 5.4.0'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection', "~> 1.0"
gem "mini_magick"
group :development, :test do

  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do

  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end



gem "dockerfile-rails", ">= 1.5", :group => :development

gem "pg", "~> 1.5"
