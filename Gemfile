source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'bootstrap-sass', '2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'xml-simple'
#gem 'bcrypt-ruby', '3.0.1'
#gem 'faker', '1.0.1'
#gem 'will_paginate', '3.0.3'
#gem 'bootstrap-will_paginate', '0.0.6'
gem 'jquery-rails', '2.0.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', 	  '1.2.3'
end

group :development do
  gem 'annotate', '2.5.0'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails', '4.1.0'
end

gem 'sqlite3', :group => [:development, :test]

group :production do
  gem 'thin'
  gem 'pg'
end