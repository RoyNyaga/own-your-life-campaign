class LessonsController < InheritedResources::Base

  private

    def lesson_params
      params.require(:lesson).permit(:name, :user_id, :content, :video_link)
    end

end
