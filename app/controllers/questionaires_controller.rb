class QuestionairesController < ApplicationController
  def new
  	@questionaire = Questionaire.new
  end
end
