class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :value
      t.references :product
      t.timestamps
    end
  end
end
