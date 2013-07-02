class HomeController < ApplicationController



def home
  
  

end


def user
   

  redirect_to('/user/userhome')
  
  
end


def signin
  
end

 def signup
    
  end 

  def Discover
  end
  
  
  
  def create_user

@admin_user = AdminUser.new(params[:admin_user])

if @admin_user.save
flash[:notice] = 'Account created please login.'
redirect_to(:action => 'home')
system("cd user_data")
Dir.mkdir(@admin_user.name)
system("cd ..")
else
render("#")
end
end







def attempt_login
authorized_user = AdminUser.authenticate(params[:email], params[:password])
if authorized_user

session[:user_id] = authorized_user.id
session[:email] = authorized_user.email
flash[:notice] = "You are now logged in."
redirect_to(:action => 'user/userhome')

else

flash[:notice] = "invalid username/password combination."
redirect_to(:action => 'signin')
end
end














  
 
  end
  
  
  
  
  
  
