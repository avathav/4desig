class CreateProductPictures < ActiveRecord::Migration
  def up
    create_table :product_pictures do |t|
      t.boolean :is_display
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_attachment :product_pictures, :image
    ProductPicture.create_translation_table! :title => :string
  end

  def down
    drop_table :product_pictures
    ProductPicture.drop_translation_table! :title => :string
  end
end
