class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  #this is allowing my new registered users to be routed
  # directly to their new profile/home page
  def create
    @user = User.new(user_params)
    if @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)
    else
      render 'new'
    end  
  end

  def edit
    @user = User.find(params[:id])
  end

  #updating the users profiles
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
    #perform the sucessful edit 
      redirect_to user_path(@user)
    else
      render 'edit'
     end
    end  

  private
  #strong params security
  def user_params
    params.require(:user).permit(:name,:last_name,:email,:password,:password_confirmation,:photo,:bio)
  end
end
