class User < ActiveRecord::Base
	has_many :tweets
	validates :password, confirmation: true
	validates :password_confirmation, :email, :name, presence: true
end
