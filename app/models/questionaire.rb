class Questionaire < ApplicationRecord
	validates :question_one, presence: true
	validates :question_two, presence: true
	validates :question_three, presence: true
	validates :question_four, presence: true
	validates :question_five, presence: true
	validates :name, presence: true
	validates :phone, presence: true
end
