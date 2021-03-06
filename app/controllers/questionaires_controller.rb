class QuestionairesController < ApplicationController
  def new
  	@questionaire = Questionaire.new
  end

  def create
  	@questionaire = Questionaire.create(questionaire_params)
  	if @questionaire.save
  		flash[:success] = "Thanks for filling the questionaire #{@questionaire.name}, We will get back to you in no time."
  		redirect_to "https://labuenavidaproject.com/"
  	else
  		render "new"
  	end
  end

  private

  def questionaire_params
  	params.require(:questionaire).permit(:question_one, :question_two, 
  		:question_three, :question_four, :question_five, :question_six, :question_seven, 
      :question_eight, :question_nine, :question_ten, :country_select, :name, :phone,
  		 :whats_app, :facebook, :referral_code)
  end

end
