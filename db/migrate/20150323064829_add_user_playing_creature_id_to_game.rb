class AddUserPlayingCreatureIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :user_playing_creature_id, :integer
  end
end
