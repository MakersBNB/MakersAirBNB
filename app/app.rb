ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'pry'

require 'database_cleaner'
require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'controllers/session'
