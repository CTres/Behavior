class Concept < ActiveRecord::Base
	after_initialize :default_values

	belongs_to :user
	belongs_to :account
	belongs_to :product
	has_many :assumptions
	has_many :metrics, as: :metricable

	attr_accessible :title, :description, :impact, :state, :assumptions_attributes, :account_id, :user_id
	
	validates_presence_of :title
	accepts_nested_attributes_for :assumptions, :allow_destroy => true




	  private
  def default_values
    self.state ||= "DEFINE"
  end
end