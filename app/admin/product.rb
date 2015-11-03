ActiveAdmin.register Product do

  permit_params :id,
                :is_display,
                :product_category_id,
                :title, :lead, :description, :features, :locale,
                :product_pictures_attributes => [:_destroy, :id, :image, :product_id, :is_display]

  config.filters = false

  index :download_links => false do
    column :title
    column :lead
    column :product_category
    bool_column :is_display
    actions

  end

  show do
    attributes_table do
      row :title
      row :product_category
      row :lead
      row :description
      row :features
      bool_row :is_display
    end

    panel I18n.t('admin.files') do
      table_for product.product_pictures do |t|
        t.column :image do |item|
          item.image ? image_tag(item.image.url(:thumb)) : nil
        end
        t.column :is_display
      end
    end
  end

  form do |f|
    f.inputs I18n.t('admin.details') do
      f.input :title
      f.input :product_category
      f.input :lead
      f.input :description, :input_html => {:class => "tinymce"}
      f.input :features, :input_html => {:class => "tinymce"}
      f.input :is_display
    end

    f.inputs I18n.t('admin.files') do
      f.has_many :product_pictures, allow_destroy: true do |item|
        item.input :image, :hint => (item.object.image? ? item.template.image_tag(item.object.image.url(:thumb)) : '')
        item.input :is_display
      end
    end
    f.actions
  end
end