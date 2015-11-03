class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.timestamps null: false
    end
    add_reference :products, :product_category
    ProductCategory.create_translation_table! :title => :string, :description => :text
  end
end
