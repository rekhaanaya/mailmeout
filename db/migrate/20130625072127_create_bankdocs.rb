class CreateBankdocs < ActiveRecord::Migration
  def self.up
    create_table :bankdocs do |t|

   t.string :name, :limit =>20
   t.string :kind, :limit =>20

   t.date :date
      t.timestamps
    end
  end


def self.down
drop_table :bankdocs
end



end

