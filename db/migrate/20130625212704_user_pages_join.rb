class UserPagesJoin < ActiveRecord::Migration
  def self.up

create_table :user_pages, :id => false do |t|

t.integer "admin_user_id"
t.integer "userhome_id"

t.timestamps
  end

add_index :user_pages, ["admin_user_id", "userhome_id"]

end

  def self.down
drop_table :user_pages

  end
end
