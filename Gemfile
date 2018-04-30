source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.4.2'
gem 'rails', '~> 5.1.5'

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets

gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets

gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'high_voltage'
gem 'pg', '~> 0.18'

# Annotate schema into model file
gem 'annotate'

# Friendly_ID
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

# Geocoder to get lat and long
gem 'geocoder'

# dotenv to define development and test environmental variables
gem 'dotenv-rails', groups: [:development, :test]

# for charts
gem 'chartkick'
gem 'groupdate'
gem 'active_median'

# SEO sitemap
gem 'sitemap_generator'

# Time syntax
gem 'dotiw'

# Calendar
gem 'simple_calendar', '~> 2.0'

# breadcrumbs
gem 'breadcrumbs_on_rails'

group :development, :test do

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'hub', :require => nil
  gem 'rails_apps_pages'
  gem 'rails_layout'
end

