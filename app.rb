require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @session = session
    session["item"] = "Item"
    erb :index
  end

  post '/checkout' do
    #@session = session
   params.to_s
  end

  configure do
  enable :sessions #turns sessions on
  set :session_secret, "secret" #encryption key that creates a session id
end #stored in browser cookie
end
