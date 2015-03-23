class CreateUserPlayingCreatures < ActiveRecord::Migration
  def change
    create_table :user_playing_creatures do |t|
      t.integer :user_creature_id

      t.timestamps null: false
    end
  end
end
