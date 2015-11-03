class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :firstname
      t.string :surname
      t.string :fb_link
      t.string :twitter_link
      t.string :google_link

      t.timestamps null: false
    end

    add_attachment :teams, :avatar
    Team.create_translation_table! :position => :string, :description => :text
  end
end
