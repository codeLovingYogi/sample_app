source 'https://rubygems.org'

gem 'rails', '3.2.15'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'

# add rspec-rails for testing
group :development, :test do
	gem 'sqlite3', '1.3.5'
	gem 'rspec-rails', '2.11.0'
end

group :development do
	gem 'annotate', '2.5.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end
 
gem 'jquery-rails', '2.0.2'

# add capybara to similate user's interaction with the sample app using a natural English-like syntax
group :test do
	gem 'capybara', '1.1.2'
	gem 'factory_girl_rails', '4.1.0'
end

# add PostgreSQL gem in production for deployment to Heroku
group :production do
	gem 'pg', '0.12.2'
end

