class User < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of :email
	has_one :profile
	accepts_nested_attributes_for :profile
end
