class Userhome < ActiveRecord::Base
   attr_accessible :name, :kind , :date, :want_delivery
   
   scope :sorted, order("userhomes.name ASC")
   
belongs_to :admin_user
  


 
   def letter_name
 "#{name}"
   end
   
end
