class ProfilesController < ApplicationController
	before_action :set_profile

	def show
	end

	def create
		@user = User.find_by_emailsession[:email])
		@profile = @user.build_profile(params_profile)
	end

	def edit
		end

	def update
		respond_to do |format|
	    if @profile.update(params_profile)
	      format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
	      format.json { render :show, status: :ok, location: @profile }
	    else
	      format.html { render :edit }
	      format.json { render json: @profile.errors, status: :unprocessable_entity }
	    end
	  end
	end

	private 

	def set_profile
		@profile = Profile.find(params[:id])
	end

	def params_profile
		params.require(:profile).permit(:firstname,:lastname,:email,:address,:phone_number)
	end}

end
