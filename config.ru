require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './models/product'

require './app'

# allow delete and put requests
use Rack::MethodOverride

run RedmartSinatraApp
