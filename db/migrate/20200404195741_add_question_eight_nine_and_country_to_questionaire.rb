class AddQuestionEightNineAndCountryToQuestionaire < ActiveRecord::Migration[5.2]
  def change
  	add_column :questionaires, :country_select, :string
  	add_column :questionaires, :question_eight, :string
  	add_column :questionaires, :question_nine, :string
  end
end
