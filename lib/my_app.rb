require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/message' do
  	@name = params[:name] 
    return @name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
