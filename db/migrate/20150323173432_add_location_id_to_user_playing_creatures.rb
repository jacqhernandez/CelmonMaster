class AddLocationIdToUserPlayingCreatures < ActiveRecord::Migration
  def change
    add_column :user_playing_creatures, :location_id, :integer
  end
end
