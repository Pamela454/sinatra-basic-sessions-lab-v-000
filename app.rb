require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @session = session 
    erb :index
  end

  post '/checkout' do
    
  end

  configure do
  enable :sessions #turns sessions on
  set :session_secret, "secret" #encryption key that creates a session id
end #stored in browser cookie
end
