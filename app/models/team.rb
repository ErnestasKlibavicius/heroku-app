class Team < ApplicationRecord
	belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
	has_many :members, class_name: 'User', through: 'team_member'
	has_many :channels

end
