class CreateMes < ActiveRecord::Migration
  def change
    create_table :mes do |t|

      t.timestamps
    end
  end
end
