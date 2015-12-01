class Profile < ActiveRecord::Base
	validates_presence_of :fullname, :description
	belongs_to :user
	
	acts_as_taggable
	has_many :tags

	def full_name
		"#{User.first_name} #{User.last_name}"
	end
end
