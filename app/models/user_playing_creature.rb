class UserPlayingCreature < ActiveRecord::Base
	belongs_to :user_creature
	belongs_to :game
	belongs_to :user

	before_validation :load_defaults

	def load_defaults
		if self.new_record?
			self.location_id = 0
		end
	end

	def walk!
	  new_location_id = rand(10).to_i
	  self.update(location_id: new_location_id)
      locations = Location.all
      locations.each do |location|
      	new_gps = rand(10).to_i
      	location.update(gps: new_gps)
      end
	end

	def fight!
		
	end

end
