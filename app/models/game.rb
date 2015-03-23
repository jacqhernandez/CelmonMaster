class Game < ActiveRecord::Base
	has_many :user_creatures
	has_one :user_playing_creature
	belongs_to :user
end
