require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require 'rubygems'
require 'csv'

before do
  csv_text = File.read("public/original_nancys_songs.csv")
  @result = CSV.parse(csv_text, :headers => true)
  @songs_by_id = {}
  @result.each do |song| 
    @songs_by_id[song["id"]] = song 
  end
end

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
  erb :songs
end

get '/lyrics/:id' do
  @lyric_id = params[:id]
  @song = @songs_by_id[params[:id]]
  erb :lyrics
end

not_found do
erb :not_found
end

