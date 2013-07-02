class BillingPaper < ActiveRecord::Base
  attr_accessible :name, :kind, :date

validates :userhome_id, presence: true  
belongs_to :userhome

     validates :userhome_id, presence: true
      default_scope order: 'billing_papers.created_at DESC'

     scope :sorted, order("billing_papers.name ASC")

  
  end
