class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :content
      t.string :video_link

      t.timestamps
    end
  end
end
