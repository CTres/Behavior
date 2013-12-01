class Metric < ActiveRecord::Base
	#Associations
	belongs_to :metricable, :polymorphic => true
	#Attributes
  attr_accessible :value

  validates_presence_of :value
end
