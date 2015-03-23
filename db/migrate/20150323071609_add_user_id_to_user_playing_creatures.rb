class AddUserIdToUserPlayingCreatures < ActiveRecord::Migration
  def change
    add_column :user_playing_creatures, :user_id, :integer
  end
end
