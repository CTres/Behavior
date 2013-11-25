class Concept < ActiveRecord::Base
	belongs_to :product

  attr_accessible :title, :description, :impact, :state
end