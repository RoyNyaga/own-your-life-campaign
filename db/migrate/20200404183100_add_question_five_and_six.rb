class AddQuestionFiveAndSix < ActiveRecord::Migration[5.2]
  def change
  	add_column :questionaires, :question_five, :string
  	add_column :questionaires, :question_six, :string
  end
end
