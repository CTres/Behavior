class AddVisionToAccount < ActiveRecord::Migration
  def change
  	add_column :accounts, :vision, :string
  end
end
