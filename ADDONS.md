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

_______
DOCUMENTATION


#### Project 2 OFFICIAL documentation and steps
*Layover Angels*

#### 1. Creating the User model 

`$ rails g model Users username email password_digest photo bio:text`  

Include has_secure_password in our model class.
Validate the email attribute so that it is required and unique.

- tested in `rails c` the rails console by 
```
user = User.new
user.email = "user1@email.com"
user.password = "abc123"
user.password_confirmation = "abc123"
user.save
user.password_digest
```


#### 2. Creating the users controller 
this is where the magic happens.
` rails g controller Users index new create`

add strong params security 

```
private

 def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
 end
```
I need additional understanding on def methods for routes

#### 3. set up user routes
used  
`resources :users, only: [:index, :new, :create]`

`$ rake routes`
it shows up! the routes..

#### 4. Create static_pages controllers

Created 1 static_page controller for the "Home" page 
`root 'static_page#home` inside my routes.rb

Inside the static_page folder and my home.html.erb page
I created the welcome message and a log in form with bootstrap

there' is also a working button REGISTER that takes you to the Sign up form
`/users/new` from views ->users->new.html.erb
after user fills out the form and pushes 'create user' it should redirect to a users profile.

#### Creating a sessions controller
`rails g controller Sessions`

added the following logic to control sign ins and sign outs. .

```
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
```
#### added Sessions routes
`resources :sessions, only: [:new, :create, :destroy]`

#### added an new.html.erb
**inside views -> sessions folders

-Added form for login

#### linking the 'login' button to a new users view  "show"
1. add to users_controller.rb 
```def show
    @user = User.find_by_id(params[:id])
  end
```
2. add to routes.rb `:show` inside the `users`  routes
3. modify the logic inside `def create` inside sessions_controller.rb

```   
    def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      redirect_to user_path(user.id), notice: 'You are in!'
    else
      flash.now.alert = "Oops! You must of missed something. Try again."
      end  
     end
   
   ```

   REACHING INTO THE BUCKET

   [30] layover_angels(main)> Angel.all.each {|angel| puts angel.name}
  Angel Load (0.6ms)  SELECT "angels".* FROM "angels"
Ryan Gosling
Abel
Will
Vin Diesel
Tara Milch
Lola Tag
Julie Bean

on the users_edit.. REMOVED

<form accept-charset="UTF-8" action="/users/1" class="edit_user"
      id="edit_user_1" method="post">
  <input name="_method" type="hidden" value="patch" />
