class Userhome < ActiveRecord::Base
   attr_accessible :name, :kind
   
   scope :sorted, order("userhomes.name ASC")
   
end
