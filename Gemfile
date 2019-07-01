source "http://rubygems.org"

# Specify your gem's dependencies in plutus.gemspec
gemspec

group :development, :test do
  gem "sqlite3", :platform => [:ruby, :mswin, :mingw]
  gem "jdbc-sqlite3", :platform => :jruby
  gem 'activerecord-jdbcsqlite3-adapter', :require => 'jdbc-sqlite3', :platform => :jruby
  gem 'factory_bot_rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'rspec-its'
  gem 'coveralls', require: false
end
