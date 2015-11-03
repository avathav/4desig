class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :is_display

      t.timestamps null: false
    end
    Product.create_translation_table! :title => :string, :lead => :text, :description => :text, :features => :text
  end
end
