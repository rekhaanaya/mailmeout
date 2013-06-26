class Home < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email , :password
end
