class ProfilesController < ApplicationController


  def create
    @profile = Profile.create(profile_params)
    redirect_to @profile
  end

  def new
    @profile = Profile.new
  end

def show
  @profile = Profile.find(params[:id])

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

def require_login
  return head(:forbidden) unless session.include? :user_id
end

end
