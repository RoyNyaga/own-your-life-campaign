require "normalize_country"

class Questionaire < ApplicationRecord
	before_create :convert_country_code

	validates :question_one, presence: true
	validates :question_two, presence: true
	validates :question_three, presence: true
	validates :question_four, presence: true
	validates :question_five, presence: true
	validates :name, presence: true
	validates :phone, presence: true
	validates :country_select, presence: true


	private 

	def convert_country_code
		self.country_select = NormalizeCountry(country_select,  :to => :official)
	end
end
