class Channel < ApplicationRecord
  belongs_to :creator, class_name 'User', foreign_key: 'creator_id'
  belongs_to :team
  has_many :messages
end
