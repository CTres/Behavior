class AddAccountToConcept < ActiveRecord::Migration
  def change
  	change_table :concepts do |t|
  		t.references :account
  	end
  end
end
