require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end