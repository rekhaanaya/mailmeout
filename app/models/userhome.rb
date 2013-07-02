class Userhome < ActiveRecord::Base
   attr_accessible :name, :kind , :date
  validates :admin_user_id, :userhome_id, presence: true
  

   scope :sorted, order("userhomes.name ASC")
   
belongs_to :admin_user
  


 
   def letter_name
 "#{name}"
   end
   
end
