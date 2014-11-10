$:.unshift File.expand_path('../lib/', __FILE__)
require 'githubstats/version'

Gem::Specification.new do |s|
  s.name        = 'githubstats'
  s.version     = GithubStats::VERSION
  s.date        = Time.now.strftime("%Y-%m-%d")

  s.summary     = 'Present Github contributions stats in a consumable format'
  s.description = "Pulls the statistics from Github's user contribution chart and provides an interface for analyzing that data"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/githubstats'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split
  s.executables = ['githubstats']

  s.add_runtime_dependency 'curb', '~> 0.8.6'
  s.add_runtime_dependency 'basiccache', '~> 0.2.2'
  s.add_runtime_dependency 'nokogiri', '~> 1.6.4.1'

  s.add_development_dependency 'timecop', '~> 0.7.1'
  s.add_development_dependency 'rubocop', '~> 0.27.0'
  s.add_development_dependency 'rake', '~> 10.3.2'
  s.add_development_dependency 'coveralls', '~> 0.7.1'
  s.add_development_dependency 'rspec', '~> 3.1.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0'
end
