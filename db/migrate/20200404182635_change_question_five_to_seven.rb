class ChangeQuestionFiveToSeven < ActiveRecord::Migration[5.2]
  def change
  	rename_column :questionaires, :question_five, :question_seven
  end
end
