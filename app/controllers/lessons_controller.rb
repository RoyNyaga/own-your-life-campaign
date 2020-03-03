class LessonsController < ApplicationController
	def index
		@lessons = Lesson.all
		@completion = percentage_completion
	end 

	def show
		@lesson = Lesson.find_by(id: params[:id])
	end 

	def create_course
		@lesson = Lesson.find_by(id: params[:id])
		current_user.lessons << @lesson
		flash[:success] = "lesson completed, you can move to the next lesson"
		redirect_to lessons_path
	end 
  private

    def lesson_params
      params.require(:lesson).permit(:name, :user_id, :content, :video_link)
    end

    def percentage_completion
    	@num_lessons = Lesson.count
    	return (current_user.courses.count/@num_lessons) * 100
    end 

end
