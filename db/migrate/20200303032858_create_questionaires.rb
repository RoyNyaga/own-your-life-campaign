class CreateQuestionaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaires do |t|
      t.string :question_one
      t.string :question_two
      t.string :question_three
      t.string :question_four
      t.string :question_five
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
