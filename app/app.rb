ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'pry'
require 'sinatra/flash'
require 'database_cleaner'
require 'haml'

require_relative 'data_mapper_setup'
require_relative 'server'
require_relative 'controllers/session'
require_relative 'controllers/spaces'
