class CreateAdminUsers < ActiveRecord::Migration

def self.up
    create_table :admin_users do |t|


   t.string :first_name , :limit =>20
   t.string :last_name, :limit =>20
   t.string :password, :limit => 20
   t.string :email , :default => ""
      t.timestamps
    end
  end

def self.down
drop_table :admin_users
end
end


