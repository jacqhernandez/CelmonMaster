class User < ActiveRecord::Base
  has_one :game
  has_many :user_creatures
  has_one :user_playing_creature
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

end
