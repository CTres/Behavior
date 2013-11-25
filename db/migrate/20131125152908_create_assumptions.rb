class CreateAssumptions < ActiveRecord::Migration
  def change
    create_table :assumptions do |t|
      t.string :value
      t.string :state
      t.references :concept
      t.timestamps
    end
  end
end
