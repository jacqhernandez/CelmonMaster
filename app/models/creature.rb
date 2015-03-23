class Creature < ActiveRecord::Base
  has_many :user_creatures
  
  def to_s
  	self.name
  end
  
end
