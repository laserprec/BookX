class UsersController < ApplicationController

	def new
		@user = User.new
		@users = User.all
	end

	def create
		@user = User.new
		@user = User.new(params_user)
		respond_to do |format|
			if @user.save
				@profile = @user.build_profile(params_profile)
				format.html	{ redirect_to root_path, notice: 'Successfully signed up.' }
			else
				flash.now.alert = "Invalid email or password"
				#format.html { render :template => "/new.html.erb", notice: 'Invalid email or password' }
				redirect_to :back
			end
		end
	end

	private 

	def params_user
		binding.pry
		params.require(:user).permit(:firstname, :lastname, :email, :password)
	end

	def params_profile
		params.require(:user).permit(:firstname, :lastname, :email)
	end

end
