class UsersController < ApplicationController
  

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  #TODO go over this again carefully
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to_users_path
    else
    render 'new'
    end  
  end

  private
  #strong params security
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
