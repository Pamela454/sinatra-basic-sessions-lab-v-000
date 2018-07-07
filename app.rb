require_relative 'config/environment'

class App < Sinatra::Base
  get '/hey' do 
  @session = session
  end
end