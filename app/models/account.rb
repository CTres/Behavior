class Account < ActiveRecord::Base
  
  # Associations
  has_many :users
  has_many :products

  #Attributes
	attr_accessible :company, :products_attributes

  accepts_nested_attributes_for :users
  accepts_nested_attributes_for :products
end
