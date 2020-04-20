class Presentation < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone, presence: true
	validates :email, presence: true
	validates :facebook_username, presence: true
	validates :address, presence: true
	validates :expectations, presence: true
end
