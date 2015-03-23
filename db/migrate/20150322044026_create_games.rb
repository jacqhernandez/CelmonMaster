class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :user_creature_id

      t.timestamps null: false
    end
  end
end
