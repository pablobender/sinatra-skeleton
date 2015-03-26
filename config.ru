# encoding utf-8

require 'rubygems'
require 'bundler'
require 'sinatra'

Bundler.require :default, settings.environment.to_sym

require File.expand_path('../config/application', __FILE__)

run SinatraTemplate::App
