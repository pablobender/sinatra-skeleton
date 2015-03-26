# encoding utf-8

require 'active_record'

module SinatraTemplate
  Dir.glob(File.expand_path('../../src/**/*.rb', __FILE__)) {|file| require file}

  class App < Sinatra::Base
    configure do
      configuration = YAML::load(IO.read("config/database.yml"))
      ActiveRecord::Base.establish_connection(configuration["#{settings.environment}"])
    end

    register Status
  end
end

