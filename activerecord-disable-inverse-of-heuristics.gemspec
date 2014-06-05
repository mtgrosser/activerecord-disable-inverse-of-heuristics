$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activerecord-disable-inverse-of-heuristics/version"

Gem::Specification.new do |s|
  s.name          = 'activerecord-disable-inverse-of-heuristics'
  s.version       = ActiveRecordDisableInverseOfHeuristics::VERSION
  s.date          = '2014-06-05'
  s.summary       = 'Stop ActiveRecord from guessing inverse_of associations'
  s.description   = 'In complex applications, there is no place for guessing'
  s.authors       = ['Matthias Grosser']
  s.email         = 'mtgrosser@gmx.net'
  s.require_path  = 'lib'
  s.files         = Dir['{lib}/**/*.rb', '{lib}/**/*.yml', 'MIT-LICENSE', 'README.md', 'CHANGELOG', 'Rakefile']
  s.homepage      = 'https://github.com/mtgrosser/activerecord-disable-inverse-of-heuristics'
  s.licenses      = ["MIT"]
  
  s.add_dependency 'activerecord', '~> 4.1.1'
  
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rake', '>= 0.8.7'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'minitest'
end
