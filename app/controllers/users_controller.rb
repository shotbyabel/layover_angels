class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  #DO I continue writing the logic here to route
  # the new user once they click to register on to the show view?
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  #TODO go over this again carefully
  def create
    @user = User.new(user_params)
    if @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)
    else
      render 'new'
    end  
  end

  private
  #strong params security
  def user_params
    params.require(:user).permit(:name,:last_name,:email,:password,:password_confirmation,:photo,:bio)
  end
end
