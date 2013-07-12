require './main'
require 'test/unit'
require 'rack/test'

set :environment, :test

class MainTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_root_returns_home
    get '/'
    assert last_response.ok?
    # assert page.has_content?('Welcome')
    # assert_equal 'Welcome', 
    # assert_equal 'Hello World!', last_response.body
  end

  def test_about_returns_about
    get '/about'
    assert last_response.ok?
  end

  def test_contact_returns_contact
    get '/contact'
    assert last_response.ok?
  end

  def test_songs_returns_songs
    get '/songs'
    assert last_response.ok?
  end
end