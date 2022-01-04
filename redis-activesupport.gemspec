# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'redis/active_support/version'

Gem::Specification.new do |s|
  s.name        = 'redis-activesupport'
  s.version     = Redis::ActiveSupport::VERSION
  s.authors     = ['Luca Guidi', 'Ryan Bigg']
  s.email       = ['me@lucaguidi.com', 'me@ryanbigg.com']
  s.homepage    = 'http://redis-store.org/redis-activesupport'
  s.summary     = %q{Redis store for ActiveSupport}
  s.description = %q{Redis store for ActiveSupport}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency "redis-store",   '>= 1.3', '< 2'
  s.add_runtime_dependency 'activesupport', '>= 3', '< 8'

  s.add_development_dependency 'rake',     '>= 12.3.3'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'mocha',    '~> 0.14.0'
  s.add_development_dependency 'minitest', '>= 4.2', '< 6'
  s.add_development_dependency 'connection_pool', '= 2.2.2'
  s.add_development_dependency 'redis-store-testing'
  s.add_development_dependency 'appraisal', '~> 2.0'
  s.add_development_dependency 'pry-byebug', '~> 3'
end
