require 'rubygems'
require 'bundler'
require 'sinatra'

Bundler.require :default, settings.environment.to_sym

require_relative 'config/application'

desc "Run migrations"
task :migrate do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end
