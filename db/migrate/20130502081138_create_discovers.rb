class CreateDiscovers < ActiveRecord::Migration
  def change
    create_table :discovers do |t|

      t.timestamps
    end
  end
end
