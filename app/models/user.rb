class User < ActiveRecord::Base
	validates_presence_of :name, :user_name, :email, :level
end
