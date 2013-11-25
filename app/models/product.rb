class Product < ActiveRecord::Base
  belongs_to :account
  has_many :metrics
  has_many :goals
  has_many :concepts


  accepts_nested_attributes_for :metrics, :goals, :concepts
  
  attr_accessible :name

end
