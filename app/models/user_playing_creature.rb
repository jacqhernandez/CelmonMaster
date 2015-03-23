class UserPlayingCreature < ActiveRecord::Base
	belongs_to :user_creature
	belongs_to :game
	belongs_to :user

	
end
