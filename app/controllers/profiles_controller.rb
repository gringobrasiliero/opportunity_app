class ProfilesController < ApplicationController


  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to @profile
  end

  def new
    @profile = Profile.new
  end


  def index
    @profiles = Profile.all
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
  end
private

def profile_params
  params.require(:profile).permit(:first_name, :last_name, :street_address, :city, :state, :zip, :phone_number)

end
end
