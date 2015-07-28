class SessionsController < ApplicationController
end


def create
  user = User.find_by(emails:params[:email])
  if user && user.authenticate(params[:password])
    redirect_to root_path, notice: 'You are in!'
  else
    flash.now.alert = "Oops! You must of missed something. Try again."
    end  
   end
   
def destroy
  redirect_to root_path, notice: "Catch you next time!"
end
