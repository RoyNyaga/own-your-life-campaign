class PresentationsController < ApplicationController
  def new
  	@presentation = Presentation.new
  end

  def create
		@presentation = Presentation.create(presentation_params)
			if @presentation.save
			flash[:success] = "Thanks for submiting your presentation form #{@presentation.first_name}, We will get back to you in no time."
			redirect_to root_path
		else
			flash.now[:danger] = "Sorry your form could not be submitted, please kindly address the errors below."
			render "new"
		end
	end

  private

  def presentation_params
  	params.require(:presentation).permit(:first_name, :last_name, :phone, :email, :facebook_username, :address, :expectations)
  end
end
