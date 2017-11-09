require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    $pl1 = Player.new(params[:player1])
    $pl2 = Player.new(params[:player2])
    redirect "/play"
  end

  get "/play" do
    @pl1 = $pl1.name
    @pl2 = $pl2.name
    @hp1 = $pl1.hp
    @hp2 = $pl2.hp
    erb(:play)
  end

  get '/attack' do
    @pl1 = $pl1.name
    @pl2 = $pl2.name
    Game.new.attack($pl2)
    erb(:attack)

  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
