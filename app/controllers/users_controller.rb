class UsersController < ApplicationController

	def new
		@user = User.new
		@users = User.all
	end

	def create
		@user = User.new
		@user = User.new(params_user)
		if @user.save
			@profile = @user.build_profile(params_profile)
			redirect_to root_path, notice: 'Successfully signed up.'
		else
			flash.now.alert = "Invalid email or password"
			render :new
		end
	end

	private 

	def params_user
		params.require(:user).permit(:firstname, :lastname, :email, :password)
	end

	def params_profile
		params.require(:user).permit(:firstname, :lastname, :email)
	end

end
