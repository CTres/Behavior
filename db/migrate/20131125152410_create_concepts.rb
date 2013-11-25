class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :title
      t.string :description
      t.string :impact
      t.string :state
      t.references :product
      t.timestamps
    end
  end
end
