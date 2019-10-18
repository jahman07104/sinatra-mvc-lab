require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = PigLatinizer.new 
    @piglatin = text.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end 