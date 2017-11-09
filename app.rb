require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player1],params[:player2])
    redirect "/play"
  end

  get "/play" do
    @pl1 = $game.player1.name
    @pl2 = $game.player2.name
    @hp1 = $game.player1.hp
    @hp2 = $game.player2.hp
    erb(:play)
  end

  get '/attack' do
    @pl1 = $game.player1.name
    @pl2 = $game.player2.name
    @pl22 = $game.player2
    $game.attack(@pl22)
    erb(:attack)

  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
