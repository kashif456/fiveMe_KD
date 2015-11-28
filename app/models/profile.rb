class Profile < ActiveRecord::Base
	validates_presence_of :fullname, :description
	belongs_to :user
	
	acts_as_taggable
	has_many :tags
end
