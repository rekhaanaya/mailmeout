class UserController < ApplicationController
  
  
  
  
  def userhome
    
    @userhomes = Userhome.sorted
  
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

end
