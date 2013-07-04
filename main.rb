require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require 'rubygems'
require 'csv'

before do
  csv_text = File.read("public/original_nancys_songs.csv")
  csv_parse = CSV.parse(csv_text, :headers => true)
  @result = []
  csv_parse.each do |row|
    @result << { id: row['id'], title: row['title'], length: row['length'], lyrics: row['lyrics'], released_on: row['released_on']}
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
  @song = @result.detect { |x| x[:id] == @lyric_id }

  if @song
    erb :lyrics
  else
    erb :not_found
  end
end

not_found do
  erb :not_found
end

