class AlterUserhome < ActiveRecord::Migration
  def change
add_column :userhomes, :admin_user_id, :integer
add_index :userhomes, [:admin_user_id, :created_at]

  end

  def down
remove_index :userhomes, [:admin_user_id, :created_at]

  end
end
