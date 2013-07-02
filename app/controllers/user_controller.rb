class UserController < ApplicationController
  before_filter :confirm_logged_in
  


def index
  
  @admin_user = AdminUser.find(params[:admin_user_id])
   @userhome = @admin_user.userhome
 
end



  
  
  def userhome

  @admin_user = AdminUser.find(session[:user_id])
  @userhome = @admin_user.userhome

end
  
  
  
  def show

  end
  
  
  
  
  
  def create
  @userhomes = authorized_user.userhome.build(params[:userhome])
  if @userhome.save
    flash[:success] ="Account created!"
    redirect_to('user/userhome')
    
  else
    render 'home'
  end
  end
  
  
 

  
  
  
  
  
  
  
  
  
  
  
  
  
  
def bill
  
  @billing_papers = BillingPaper.sorted
end
def bank
@bankdocs = Bankdoc.sorted  
end

def signature
 
end

def junk
  
  @junk_papers = JunkPaper.sorted
 
end

def others
 end
 
def delete
@userhome = Userhome.find(params[:id])
end


def destroy
  Userhome.find(params[:id]).destroy
  flash[:notice] = ""
  redirect_to(:action => 'bill')
end


def signin
  redirect_to('/home/signin')

end



def logout

session[:user_id] = nil
session[:email] = nil
flash[:notice] = "You have been logged out."

redirect_to("/home/signin")

end














end
