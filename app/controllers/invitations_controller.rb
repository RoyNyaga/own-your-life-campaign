class InvitationsController < ApplicationController

	def new
		@invitation = Invitation.new
	end

	def create
		@invitation = Invitation.create(invitation_params)
		if @invitation.save
			flash[:success] = "Thanks for the request #{invitation.name}, We will get back to you in no time."
		else
			render "new"
		end 
	end

	private

	def invitation_params
		params.require(:invitation).permite(:email, :name, :phone_number)
	end  
end
