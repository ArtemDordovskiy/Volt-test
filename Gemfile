source 'https://rubygems.org'

gem 'volt', '0.9.3'

# volt uses mongo as the default data store.
gem 'volt-mongo', '0.1.0'

# Server for MRI
platform :mri do
  # The implementation of ReadWriteLock in Volt uses concurrent ruby and ext helps performance.
  gem 'concurrent-ruby-ext', '~> 0.8.0'

  # Thin is the default volt server, you Puma is also supported
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end

# Server for jruby, ruby
platform :ruby, :jruby do
  gem 'rbnacl', require: false
  gem 'rbnacl-libsodium', require: false
end

gem 'csso-rails', '~> 0.3.4', require: false
gem 'uglifier', '>= 2.4.0', require: false

