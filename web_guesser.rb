require 'sinatra'
require 'sinatra/reloader'

RANDOM_NUMBER = rand(100)

get '/' do
  "THE SECRET NUMBER IS  #{RANDOM_NUMBER}"
end
