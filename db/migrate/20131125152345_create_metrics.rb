class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :value
      t.references :product
      t.timestamps
    end
  end
end
