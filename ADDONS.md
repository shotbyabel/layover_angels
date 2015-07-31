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

#######NOTES

Notes from David about SEARCH FORM and angels controller

Questions: I need to determined how many things to search by.
right now for practical reasons.. gender and airport.

Questions: where do I put my search form?
-I could create a new controller for searches
OR 
I could just finish creating controllers for Angels and
using one of those actions/views to display my form

David suggest return my form to the angels controller INDEX

####

shotbyabel@gmail.com
Abel Alejandro
abel123
Abel
Hernandez
nil
I am the creator of Layover Angels.

taylor1@taylor.com
taylor1
Taylor
Gangordie
coming soon

mai@mai.com
Mai 
Lill
mai123
nil
I am here.

test1mail.com
Test
One
test123
nil
I am test 1

Arrival data
#####MY USERS########
abel@mail.com
1234
Alex
Hernandez

guy@mail.com
guy123
Guy
Main
nil
I am a big traveler
and enjoy big cities

gal@mail.com
gal123
Gal
Main
nil
I am a new traveler and enjoy small towns.

tiffany1@mail.com
1234



:name               Name:                 Abel Alejandro
:age                  Age:                    33
:gender               Gender:               M
:airport                Airport:                  LAX, BUR
:zodiac               Zodiac:                 Leo
:languages            Languages:              English, Spanish, Portuguese
:years                Years in LA:              13
:bio                  About Me:             n/a
:top3_localspots        Local Spots:              DTLA, Venice, Santa Monica Mountains
:top3_travels         Travel Destinations:        Indonesia, Brazil, Baltics
:top3_historicalfigs      Historical Figures:       Fidel Castro, Malcolm X, Your Mom

:name               Name:                 Vin Diesel
:age                  Age:                    40
:gender               Gender:               M
:airport                Airport:                  ONT, BUR
:zodiac               Zodiac:                 Scorpio
:languages            Languages:              English, French
:years                Years in LA:              10
:bio                  About Me:             n/a
:top3_localspots        Local Spots:              The Standard, Hermosa Beach, DTLA
:top3_travels         Travel Destinations:        Santa Barbara, Las Vegas, Dominican Republic
:top3_historicalfigs      Historical Figures:       Paul Walker, Bill Clinton, Angela Merkel

:name               Name:                 Ryan Goslin
:age                  Age:                    25
:gender               Gender:               M
:airport                Airport:                  LAX
:zodiac               Zodiac:                 Pisces 
:languages            Languages:              English, Love
:years                Years in LA:              7
:bio                  About Me:             n/a
:top3_localspots        Local Spots:              LA River, Pomona Speedway , Hollywood
:top3_travels         Travel Destinations:        Grand Canyon, Rome, Chicago
:top3_historicalfigs      Historical Figures:       Abraham Lincoln, Hellen Keller, Charlie Chaplin

:name               Name:                 Will Dayrit
:age                  Age:                    29
:gender               Gender:               M
:airport                Airport:                  ONT, SNA
:zodiac               Zodiac:                 Libra
:languages            Languages:              English
:years                Years in LA:              13
:bio                  About Me:             n/a
:top3_localspots        Local Spots:              DTLA, DTF, DTLB
:top3_travels         Travel Destinations:        Phillippines, Taiwan, Denver
:top3_historicalfigs      Historical Figures:       Manny Pacquiao, Gengis Khan, Albert Einstein



:name               Name:                 Amanda Bynes
:age                  Age:                    29
:gender               Gender:               F
:airport                Airport:                  LAX, BUR, ONT, LGB, SNA
:zodiac               Zodiac:                 Aries
:languages            Languages:              English
:years                Years in LA:              29
:bio                  About Me:             n/a
:top3_localspots        Local Spots:              Playa del Rey, Redondo, Tijuana
:top3_travels         Travel Destinations:        Ibiza, Reno,New York
:top3_historicalfigs      Historical Figures:       Albert Einstein, Hillary Clinton,


#app-nav {
background: #223658;
opacity: 0.7;
color: white;
overflow: hidden;
border-bottom: 2px solid grey;
padding: 20px 3%;
height: 75px;
}


-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;

NAV 
body {

  margin: 0;
  padding: 0;
  background: #ccc;
}

  
