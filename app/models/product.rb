class Product < ActiveRecord::Base
	# before_save :assign_account_and_user
  
  belongs_to :account
  belongs_to :user
  has_many :metrics, as: :metricable
  has_many :goals
  has_many :concepts

  attr_accessible :name, :concepts_attributes, :metrics_attributes

  accepts_nested_attributes_for :metrics, :allow_destroy => true
  accepts_nested_attributes_for :goals
  accepts_nested_attributes_for :concepts, :allow_destroy => true
  

  # def assign_account_and_user
  # 	self.account_id = current_account.id
  #   self.user_id    = current_user.id
  # end
end
