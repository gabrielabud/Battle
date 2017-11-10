require 'sinatra/base'
require './lib/player'
require './lib/game'
# building a battle game
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.game=(Game.new(player_1, player_2))
    redirect '/play'
  end

  get '/play' do
    @game = Game.game
    erb(:play)
  end



  get '/attack' do
    @game = Game.game
    @game.attack(@game.player_2)
    @game.switch
    erb(:attack)
  end  
end
