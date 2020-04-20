class AddSocialLinksToQuestionaires < ActiveRecord::Migration[5.2]
  def change
  	add_column :questionaires, :whats_app, :string
  	add_column :questionaires, :linkedin, :string
  	add_column :questionaires, :twitter, :string
  end
end
