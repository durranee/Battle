require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:p1]), Player.new(params[:p2]))
    redirect '/play'
  end

  get '/play' do
    @p1 = $game.p1
    @p2 = $game.p2
    erb(:play)
  end

  get '/attack' do
    @p1 = $game.p1
    @p2 = $game.p2
    $game.attack($game.current_player)
    $game.swap_turns
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
