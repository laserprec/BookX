class ApplicationController < ActionController::Base
  before_action :get_campus_list
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
end
