class AddCodeToStaticPage < ActiveRecord::Migration
  def change
    add_column :static_pages, :code, :integer
  end
end
