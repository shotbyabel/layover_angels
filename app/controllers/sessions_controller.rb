class SessionsController < ApplicationController






def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    redirect_to user_path(user.id), notice: 'You are in!'
  else
    flash.now.alert = "Oops! You must of missed something. Try again."
    end  
   end

######
 # def create
 #    user = User.find_by(email: params[:session][:email].downcase)
 #    if user && user.authenticate(params[:session][:password])
 #      log_in user
 #      remember user
 #      redirect_to user
 #    else
 #      flash.now[:danger] = 'Invalid email/password combination'
 #      render 'new'
 #    end
 #  end
  ############


 # def new
 #  user = User.find_by(email: params[:email]

 #    )  
   
def destroy
  redirect_to root_path, notice: "Catch you next time!"
end
end
