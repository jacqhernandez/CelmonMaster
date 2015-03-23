class Location < ActiveRecord::Base
	has_one :creature

	before_validation :load_defaults

	def load_defaults
		if self.new_record?
			self.gps = rand(10).to_i
		end
	end

	def to_s
		self.name
	end

end
