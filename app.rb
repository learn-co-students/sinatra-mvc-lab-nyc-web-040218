require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @sentence = params[:user_phrase]
    @piglatin = pl.piglatinize(@sentence)

    erb :results
  end



end
