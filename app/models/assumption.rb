class Assumption < ActiveRecord::Base
	
	after_initialize :default_values

	#Associations
	belongs_to :concept

	#Attributes
  attr_accessible :value, :state

  #Validations
  validates_presence_of :value


  

  private
  def default_values
    self.state ||= "untested"
  end
	end
end
