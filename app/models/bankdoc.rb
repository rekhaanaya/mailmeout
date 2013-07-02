class Bankdoc < ActiveRecord::Base
   attr_accessible :name, :kind, :date

validates :userhome_id, presence: true
 belongs_to :userhome
default_scope order: 'bankdocs.created_at DESC'
   scope :sorted, order("bankdocs.name ASC")


end
