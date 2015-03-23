class Creature < ActiveRecord::Base
  has_many :user_creatures
  belongs_to :location
  
  def to_s
  	self.name
  end
  
end
