class CreateUserhomes < ActiveRecord::Migration
  def self.up
   create_table :userhomes do |t|
    t.references :admin_user
    t.string :name, :limit => 20
    t.string :kind, :limit => 20
    t.date :date
      
     t.timestamps

 end
  end
  


 
  def self.down
  drop_table :userhomes
 
  end
  
  
  
  
end
