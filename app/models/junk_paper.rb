class JunkPaper < ActiveRecord::Base
   attr_accessible :name, :kind, :date

 validates :userhome_id, presence: true

 belongs_to :userhome
   default_scope order: 'junk_papers.created_at DESC'
   scope :sorted, order("junk_papers.name ASC")


end
