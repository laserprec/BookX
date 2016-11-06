class SessionsController < ApplicationController
	def new 
	end
	
	def create
		if params[:email].present? && params[:password].present?
			found_user = User.find_by_email(params[:email])
			if found_user && found_user.authenticate(params[:password])
				session[:email] = params[:email]
				session[:firstname] = found_user.firstname
	        	session[:user_id] = found_user.id
	        	session[:profile_id] = found_user.profile.id
	        	session[:user_campus] = found_user.campus
	        	redirect_to root_url, notice: "Log in successful!"
        	else	
        		flash.now.alert = "Invalid email or password"
        		render "new"
       		end
        else
        	flash.now.alert = "email and password cannot be blank"
         	render "new"
        end	
	end

	def destroy 
		session[:email] = nil
		session[:user_id] = nil
		session[:profile_id] = nil
		session[:user_campus] = nil
       	redirect_to root_url, notice: "Log out successful!"
    end

end
