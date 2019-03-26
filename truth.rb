require 'sinatra'
require 'sinatra/reloader'

# If request is /, display main page
get '/' do
  erb :index
end
