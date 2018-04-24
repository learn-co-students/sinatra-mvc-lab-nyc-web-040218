require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @latinized = PigLatinizer.new
    @latin = @latinized.piglatinize(params[:user_phrase])

    erb :piglatinize
  end
end
