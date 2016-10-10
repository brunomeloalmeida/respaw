class User < ActiveRecord::Base
	validates_presence_of :name, :user_name, :level, :summoner_id
	belongs_to :summoner

	validates :summoner_id, uniqueness: true
end
