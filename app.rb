require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_01 = Player.new(params[:player_01_name])
    $player_02 = Player.new(params[:player_02_name])
    redirect '/play'
  end

  get '/play' do
    @player_01 = $player_01
    @player_02 = $player_02
    erb :play
  end

  get '/attack' do
    @player_01 = $player_01
    @player_02 = $player_02
    Game.new.attack(@player_02)
    erb :attack
  end
 
  # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
