source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.7.6'

# Required gems for Heroku deployment
gem 'rails_12factor', group: :production

gem 'haml'
gem 'devise'
gem 'linkedin'
gem 'omniauth'
gem 'omniauth-oauth2'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
gem 'omniauth-linkedin-oauth2'
gem 'omniauth-twitter'
gem 'twitter'
gem 'jquery-turbolinks'
gem 'dotenv-rails', groups: [:development, :test]

# For local dev
# gem 'haml', '~> 5.0.1'
# gem 'devise', '~> 4.3.0'
# gem 'linkedin'
# gem 'omniauth'
# gem 'omniauth-oauth2', '~> 1.3.1'
# gem 'omniauth-facebook'
# gem 'omniauth-github'
# gem 'omniauth-google-oauth2'
# gem 'omniauth-linkedin-oauth2'
# gem 'omniauth-twitter'
# gem 'twitter'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.7'

# Note: Heroku dont support sqlite3 so lets comment it out and use postgres
# gem 'sqlite3'
gem 'pg', '~> 0.21.0'

# gem 'mysql2', '~> 0.3.20'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

platforms 'mswin', 'mingw', 'mswin64', 'x64_mingw' do
  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:jruby, :ruby]


# ================================================================================
# Not working in travis ci,
# ruby '2.0.0'

# note: Ruby versions below is not available in ruby-buildpacks(cf-bluemix) but available on Openshift
# More info https://github.com/cloudfoundry/ruby-buildpack/releases
# ruby '2.1.5'

# note: Not available in rbenv
# ruby '2.1.9'

# ruby '2.1.9'
# ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
##gem 'rails', '4.1.4' ## requiring active_job/railtie will failed.
