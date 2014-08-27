source 'https://rubygems.org'
gemspec

if ::File.directory?(gem_path = '../redis-store')
  gem 'redis-store', '~> 1.1.0', path: gem_path
end
if ::File.directory?(gem_path = '../redis-store-testing')
  gem 'redis-store-testing', path: gem_path
else
  gem 'redis-store-testing', git: 'https://github.com/YotpoLtd/testing.git'
end

gem 'i18n'
