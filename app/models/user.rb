class User < ActiveRecord::Base
	validates_presence_of :name, :email, :password
	belongs_to :country
	has_many :tweets
end
