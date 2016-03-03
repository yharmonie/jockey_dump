source 'http://rubygems.org'

# gem 'rails', '3.1.3'
gem 'rails'

# infrastructure
gem 'rake', require: false
gem 'mysql2'
gem 'activerecord-mysql2spatial-adapter'
#gem 'asset_sync'
gem 'sinatra'
gem 'thin'

# support
gem 'airbrake'
gem 'newrelic_rpm'

# base objects
gem 'acts-as-taggable-on', '2.2.0'
gem 'squeel'      # Good arel extensions
gem 'text'
#gem 'draper'     # Decorator/Presenter pattern

#parsers
gem 'xml-simple'

# classifier
#gem 'classifier' #http://classifier.rubyforge.org/
gem 'stuff-classifier' 

# external
gem 'curb'        # libcurl bindings
gem 'nokogiri', '1.6.7.2'    # HTML/XML parsing
#gem 'nokogiri'

# cache
gem 'memcache-client'
gem 'redis'
gem 'redis-store', "~> 1.0.0"

# admin
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'


# resque
gem 'resque'
gem 'resque-status'
gem 'resque-pool'
gem 'resque-scheduler'
gem 'resque_mailer'

#sitemap
gem 'sitemap_generator'

group :production do
  gem 'therubyracer' #JavaScript runtime for asset pipeline
  gem 'unicorn'
end

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'compass',      '~> 0.12.alpha'
  gem 'haml_coffee_assets'
  gem 'execjs'
end

group :development do
  #gem 'perftools.rb', :git => 'git://github.com/jhonyf/perftools.rb.git' #profiler
  #gem 'rack-perftools_profiler', :require => 'rack/perftools_profiler' #profiler
  gem 'haml-rails'
  gem 'nifty-generators'

  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-campfire'
end

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'fuubar'
  gem 'turn', '0.8.2', :require => false

  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'faker'

  gem 'webrat'

  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'pickle'

  gem 'capybara'
  gem 'email_spec'
  gem 'json_spec'

  gem 'evergreen', '~> 1.0.0', require: 'evergreen/rails'

  gem 'simplecov'

  #gem 'ruby-debug19'
  #gem 'debugger'


  gem 'timecop'
  gem 'foreman' # run local dev
  gem 'spork', '~> 0.9.0'

  #gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i # heroku denies deployment
  #gem 'ruby_gntp' #only works for growl 1.3 which has prereq of OSX Lion
  gem 'growl'
  gem 'powder'

  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-cucumber'
end
