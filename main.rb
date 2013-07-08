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



__END__
@@home
<% title = "Home | Songs by Nancy" %>
<!doctype html>
  <html lang="en">
    <head>
      <title><%= title %></title>
      <meta charset="utf-8">
    </head>
  <body>
    <header>
      <h1><%= title %></h1>
      <nav>
        <ul>
          <li><a href="/" title="Home">Home</a></li>
          <li><a href="/about" title="About">About</a></li>
          <li><a href="/contact" title="Contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    <section>
      <p>Welcome to this website all about the songs of the great Nancy Sinatra.</p>
    </section>
  </body>
</html>


@@about
<% title = "About | Songs by Nancy" %>
<!doctype html>
  <html lang="en">
    <head>
      <title><%= title %></title>
      <meta charset="utf-8">
    </head>
  <body>
    <header>
      <h1><%= title %></h1>
      <nav>
        <ul>
          <li><a href="/" title="Home">Home</a></li>
          <li><a href="/about" title="About">About</a></li>
          <li><a href="/contact" title="Contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    <section>
      <p>This site is a demonstration of how to build a website using Sinatra.</p>
    </section>
  </body>
</html>


@@contact
<% title = "Contact | Songs by Nancy" %>
<!doctype html>
  <html lang="en">
    <head>
      <title><%= title %></title>
      <meta charset="utf-8">
    </head>
  <body>
    <header>
      <h1><%= title %></h1>
      <nav>
        <ul>
          <li><a href="/" title="Home">Home</a></li>
          <li><a href="/about" title="About">About</a></li>
          <li><a href="/contact" title="Contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    <section>
      <p>Contact us at email@email.com</p>
    </section>
  </body>
</html>