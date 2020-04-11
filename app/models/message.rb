class Message < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :whatsapp_number, presence: true
	validates :message, presence: true
end
