class Post < ActiveRecord::Base
	enum status: { active: 0, archived: 1 }
	belongs_to :user 
	validates_presence_of :date, :rationale 

	scope :posts_by, ->(user) {where(user_id: user.id) }
end
