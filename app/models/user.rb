class User < ApplicationRecord		
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   has_many :messages, class_name: 'Message', foreign_key: 'creator_id'  
   has_many :created_teams, class_name: 'Team', foreign_key: 'creator_id'
   has_many :belonged_to_teams, class_name: 'Team', through: 'team_member'    
end
