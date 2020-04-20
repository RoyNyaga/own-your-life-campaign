class AddQuestionNine < ActiveRecord::Migration[5.2]
  def change
  	add_column :questionaires, :question_ten, :string
  end
end
