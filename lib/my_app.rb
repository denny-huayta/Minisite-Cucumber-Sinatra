require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
  	@name = params[:name] 
  	@email = params[:email] 
  	@comment = params[:comment] 
  	if @name == nil and @email == nil and @comment == nil
    	erb :index   
	else
	    if @name == "" or @email == "" or @comment == ""
	    	return "Debe registrar"
	    else
	    	return "Se registro"
	    end
	end
  end

  get '/message' do
  	@name = params[:name] 

    return @name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
