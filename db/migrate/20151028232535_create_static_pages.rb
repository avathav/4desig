class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.boolean :is_display

      t.timestamps null: false
    end
    StaticPage.create_translation_table! :title => :string, :content => :text, :lead => :text
  end
end
