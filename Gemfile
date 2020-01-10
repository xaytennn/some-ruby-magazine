source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'ancestry', require: true

gem 'breadcrumbs_on_rails'
gem 'meta-tags'
gem 'sqlite3', '~> 1.4'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'webpacker', '~> 4.0'
gem 'byebug', platforms: %i[mri mingw x64_mingw]

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'activestorage'
gem 'coffee-rails', '~> 5.0.0'
gem 'jbuilder', '~> 2.7'
# gem 'jbuilder', github: 'rails/jbuilder', branch: 'master'
gem 'oj'
gem 'oj_mimic_json'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'uglifier'
gem 'bootstrap-sass'
gem 'faker'
gem 'jquery-rails'
gem 'pq'
gem 'temple'

group :development, :test do
  gem 'pg', '~> 1.1'
  gem 'rspec-json_expectations'

  # gem 'rspec-rails'
  gem 'rspec', git: 'https://github.com/rspec/rspec', branch: 'master'
  gem 'rspec-rails', git: 'https://github.com/rspec/rspec-rails', branch: 'master'#'restore-4-0-dev'
  gem 'rspec-core', git: 'https://github.com/rspec/rspec-core', branch: 'master'
  gem 'rspec-mocks', git: 'https://github.com/rspec/rspec-mocks', branch: 'master'
  gem 'rspec-expectations', git: 'https://github.com/rspec/rspec-expectations', branch: 'master'
  gem 'rspec-support', git: 'https://github.com/rspec/rspec-support', branch: 'master'
  # gem 'rspec-core'
  # gem 'rspec-mocks'
  # gem 'rspec-support'
  # gem 'rspec-expectations'

  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'pry'
  gem 'rails-controller-testing'
  gem 'rb-readline'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen'
end

group :test do
  gem 'capybara'
  gem 'webdrivers'
  gem 'db-query-matchers'
  gem 'json_spec'
  gem 'launchy'
  gem 'rubocop'
  gem 'shoulda-matchers'

end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
