ENV["RAILS_ENV"] = "test"

require 'pathname'

if RUBY_VERSION >= '1.9'
  require 'simplecov'
  SimpleCov.start do
    if artifacts_dir = ENV['CC_BUILD_ARTIFACTS']
      coverage_dir Pathname.new(artifacts_dir).relative_path_from(Pathname.new(SimpleCov.root)).to_s
    end
    add_filter '/test/'
    add_filter 'vendor'
  end

  SimpleCov.at_exit do
    SimpleCov.result.format!
    if result = SimpleCov.result
      File.open(File.join(SimpleCov.coverage_path, 'coverage_percent.txt'), 'w') { |f| f << result.covered_percent.to_s }
    end
  end
end

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require 'byebug'
require 'active_support/testing/autorun'
require 'active_support/test_case'

#require 'activerecord-disable-inverse-of-heuristics'
require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')

require File.expand_path('../schema', __FILE__)

require File.expand_path('../models/make', __FILE__)
require File.expand_path('../models/car', __FILE__)

I18n.enforce_available_locales = true
