class Account < ActiveRecord::Base
  
  # Associations
  has_many :users, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :concepts, dependent: :destroy
  has_many :metrics, as: :metricable

  #Attributes
	attr_accessible :company, :products_attributes, :metrics_attributes, :vision

  accepts_nested_attributes_for :metrics, :allow_destroy => true
  accepts_nested_attributes_for :users
  accepts_nested_attributes_for :products

  attr_accessor :owner_type
  attr_accessor :owner_id
end
