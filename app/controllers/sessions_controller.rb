class SessionsController < ApplicationController
  def new
  end
  
  def create
  	  msisdn = params[:session][:msisdn]
  	  if(msisdn.length != 12)
  	  	   flash[:error] = 'Msisdn no es valido'
  	  	   render 'new'
			else
				session[:msisdn] = params[:session][:msisdn]
				redirect_to "/home/index"
  	  end
	end
	
	def destroy
		session[:msisdn] = nil
		redirect_to "/login"
	end
  
end
