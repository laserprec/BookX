class ApplicationController < ActionController::Base
  before_action :get_campus_list
  before_action :set_new_user
  protect_from_forgery with: :exception

  private

  def get_campus_list
  	@CAMPUS_LIST = ["Tufts", "UMass Amherst"]
  end

  def get_user_campus
	  	if session[:campus] = nil
	  		@USER_CAMPUS = "Select Campus"
	  	else
	  		@USER_CAMPUS = session[:campus]
	  	end
  end

  def set_new_user
      if session[:user_id] = nil;
        @user = User.new
         binding.pry
      end
     
    end
end
