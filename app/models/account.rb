class Account < ActiveRecord::Base
  
  # Associations
  has_many :users

  #Attributes
   attr_accessible :company
  	accepts_nested_attributes_for :users
end
