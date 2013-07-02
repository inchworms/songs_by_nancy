require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

# before do
  # content_type :txt
# end

get '/' do
  erb :home
end

get '/about' do
  @title = "All About This Website"
  erb :about
end

get '/contact' do
  @title = "Contact"
  erb :contact
end

get '/songs' do
  @title = "Songs"
  data = File.read("public/nancy_song_data.json")
  @result = JSON.parse(data)
  erb :songs
end

not_found do
erb :not_found
end



get '/name/:x' do
@name = params[:x]
erb :show
end

__END__
@@show
<h1>Hello <%= @name %>!</h1>