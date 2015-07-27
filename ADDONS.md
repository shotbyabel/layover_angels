Add Authentication to My Models

```
class Example < ActiveRecord::Base
 
 has_secure_password
 validates :email, presence: true, uniqueness: true

end
```

### CREATING A USER
```
rails c

user = User.new
user.email = "user1@email.com"
user.password = "abc123"
user.password_confirmation = "abc123"
user.save
user.password_digest

### USER Controller syntax ***check out private***

rails g controller Users index new create

controllers/users_controller.rb:

class UsersController < ApplicationController

 def index
  @users = User.all
 end

 def new
  @user = User.new
 end

 def create
  @user = User.new(user_params)
  if @user.save
   redirect_to users_path
  else
   render 'new'
  end
 end

 private

 def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
 end

end

### READ MORE about updating views and log in forms and session control from our class notes.

https://github.com/ga-students/WDI_DTLA_4/blob/master/work/w05/d03/instructor/user-models-with-passwords/user-models-with-passwords-lesson.md