class Metric < ActiveRecord::Base
	#Associations
	belongs_to :product
	#Attributes
  attr_accessible :value
end
