class CreateSliders < ActiveRecord::Migration
  def up
    create_table :sliders do |t|
      t.boolean :is_displayed
      t.timestamps null: false
    end
    add_attachment :sliders, :image
    Slider.create_translation_table! :title => :string, :lead => :text, :link=>:string
  end

  def down
    drop_table :sliders
    Slider.drop_translation_table!
  end
end
