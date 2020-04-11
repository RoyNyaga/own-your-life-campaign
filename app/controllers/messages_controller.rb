class MessagesController < ApplicationController
	def create
		@message = Message.create(message_params)
			if @message.save
			flash[:success] = "Thanks for contacting the support team #{@message.name}, We will get back to you in no time."
			redirect_to root_path
		else
			flash[:danger] = "Request could not be submited please make sure to solve the following issues: #{@message.errors.full_messages}"
			redirect_to contact_path
		end
	end

  private

  def message_params
  	params.require(:message).permit(:name, :email, :whatsapp_number, :message)
  end
end
