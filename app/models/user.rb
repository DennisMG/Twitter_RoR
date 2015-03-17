class User < ActiveRecord::Base
	validates_presence_of :name, :email
  has_secure_password
	belongs_to :country
	has_many :tweets
  accepts_nested_attributes_for :tweets
  has_many :follows
end
