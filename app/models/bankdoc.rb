class Bankdoc < ActiveRecord::Base
   attr_accessible :name, :kind, :date

   belongs_to :userhome
   scope :sorted, order("bankdocs.name ASC")


end
