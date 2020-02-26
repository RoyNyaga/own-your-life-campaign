class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:user).permit(:name, :email, :user_country, :phone, 
			:payment_status, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:name, :email, :user_country, :phone, 
			:payment_status, :password, :password_confirmation, :current_password)
	end 
end 