class AddUserToConcept < ActiveRecord::Migration
  def change
  	change_table :concepts do |t|
  		t.references :user
  	end
  end
end
