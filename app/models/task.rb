class Task < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :title, presence: true
	validates :duration, presence: true
	validates :startdate, presence: true
	validates :deadline, presence: true
	validates :author, presence: true
	validates :responsible_id, presence: true
	validate :correct_date

	def correct_date
		errors.add(:deadline, "StartDate is greater than Deadline") if startdate > deadline
	end
end
