class Task < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :title, presence: true
	validates :description, presence: true
	validates :duration, presence: true
	validates :startdate, presence: true
	validates :deadline, presence: true
	validates :author, presence: true
end
