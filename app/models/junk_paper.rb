class JunkPaper < ActiveRecord::Base
   attr_accessible :name, :kind, :date

 belongs_to :userhome
   scope :sorted, order("junk_papers.name ASC")


end
