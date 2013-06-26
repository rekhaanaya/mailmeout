class CreateBillingPapers < ActiveRecord::Migration
  def self.up
    create_table :billing_papers do |t|

    t.string :name , :limit =>20
    t.string :kind, :limit =>20
    t.date :date     



 t.timestamps
    end
  end


def self.down
drop_table :billing_papers
end


end
