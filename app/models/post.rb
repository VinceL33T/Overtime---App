class Post < ActiveRecord::Base
	enum status: { active: 0, archived: 1 }
	belongs_to :user 
	validates_presence_of :date, :rationale 
end
