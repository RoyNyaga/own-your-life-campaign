class InvitationsController < ApplicationController

	def new
		@invitation = Invitation.new
	end

	def create
		@invitation = Invitation.create(invitation_params)
		if @invitation.save
			flash[:success] = "Thanks for the request #{invitation.name}, We will get back to you in no time."
			redirect_to root_path
		else
			flash.now[:danger] = "Your form could not be submitted due to the errors bellow"
			render "new"
		end 
	end

	private

	def invitation_params
		params.require(:invitation).permit(:email, :name, :phone_number)
	end  
end
