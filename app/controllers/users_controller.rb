class UsersController < ApplicationController

def new
  @user = User.new
end


def create

  @user = user.new(params[:id])
  if user.save
    session[:user_id] = @user.id
    redirect to user_path(@user)
  end
end




def show
  @user = User.find(params[:id])

end




end
