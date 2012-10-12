require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
  	@name = params[:name] 
  	@email = params[:email] 
  	@comment = params[:comment] 
  	if @name == nil and @email == nil and @comment == nil
    	erb :index   
    end

    if @name == nil or @email == nil or @comment == nil
    	return "Debe registrar"
    else
    	return "Se registro"
    end

  end

  get '/message' do
  	@name = params[:name] 

    return @name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
