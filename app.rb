require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @p1 = params[:p1]
    @p2 = params[:p2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
