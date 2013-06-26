class UserPaperJoin < ActiveRecord::Migration
  def self.up

create_table :user_papers do |t|
t.references :admin_user
t.references :userhome
t.references :billing_paper
t.references :bankdoc
t.references :junk_paper

t.timestamps
  end

add_index :user_papers,['admin_user_id', 'userhome_id']
end

  def self.down
drop_table :user_papers  
end
end
