class AddPolyToMetrics < ActiveRecord::Migration
  def up
  	change_table :metrics do |t|
  		t.references :metricable, polymorphic: true
  	end
  end
end
