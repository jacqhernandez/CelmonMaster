class AddLocationIdToCreatures < ActiveRecord::Migration
  def change
    add_column :creatures, :location_id, :integer
  end
end
