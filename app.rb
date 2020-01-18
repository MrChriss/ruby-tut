require 'sinatra'
require 'sinatra/reloader'
require 'pry'

EMAIL = 'matic@gmail.com'
PASSWORD = 'fcf730b6d95236ecd3c9fc2d92d7b6b2bb061514961aec041d6c7a7192f592e4'

enable :sessions
set :session_store, Rack::Session::Pool

get '/' do
  erb :login, layout: :test
end

post '/' do
  email = params.fetch('email', '')
  password = params.fetch('password', 'hello123')

  redirect '/' unless valid_authentication?(email, password)

  session['user'] = {}
  session['user']['id'] = '1234'

  redirect '/secret'
end

get '/secret' do
  redirect '/' unless authenticated?(session)

  erb :secret, layout: :test
end

def valid_authentication?(email, password)
  email == email && Digest::SHA256.hexdigest(password) == PASSWORD
end

def authenticated?(session)
  session.to_h.dig('user', 'id') == '1234'
end
