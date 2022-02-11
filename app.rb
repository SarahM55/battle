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
    #p $player_01
    #p $player_02
    redirect '/play'
  end

  get '/play' do
    @player_01 = $player_01
    @player_02 = $player_02
    #p @player_01_name
    erb :play
  end

  get '/attack' do
    @player_01 = $player_01
    @player_02 = $player_02
    @player_01.attack(@player_02)
    erb :attack
  end

  # get '/points' do
  #   # erb :play
  #   "Player two has 50 points"
  # end  
  # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
