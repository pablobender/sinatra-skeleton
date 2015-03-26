# encoding utf-8
ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'bundler'

Bundler.require :default, :test

require File.expand_path('../../config/application', __FILE__)

SinatraTemplate:App.set :run, false
SinatraTemplate:App.set :raise_errors, true
SinatraTemplate:App.set :show_exceptions, false
SinatraTemplate:App.set :logging, false

module SinatraTemplate
  module Test
    module Methods
      def app
        SinatraTemplate::App
      end
    end
  end
end

RSpec.configure do |conf|
  conf.include SinatraTemplate::Test::Methods
  conf.include Rack::Test::Methods
end
