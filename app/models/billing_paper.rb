class BillingPaper < ActiveRecord::Base
  attr_accessible :name, :kind, :date

  belongs_to :userhome
     scope :sorted, order("billing_papers.name ASC")

  
  end
