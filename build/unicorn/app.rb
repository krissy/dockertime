# require 'sinatra'
require 'bundler'
Bundler.require
require 'json/pure'

get '/' do
  json ( {greeting: "Hai!"} )
end
