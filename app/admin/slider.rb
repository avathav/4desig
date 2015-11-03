ActiveAdmin.register Slider do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  permit_params :image, :is_displayed, :translations_attributes => [:id, :title, :lead, :link, :locale]
  config.filters = false

  index :download_links => false do
    column :title
    bool_column :is_displayed
    column I18n.t('admin.images') do |resource|
      image_tag(resource.image.url(:thumb)) if resource.image?
    end
    actions
  end

  form do |f|
    f.inputs I18n.t('admin.translations') do
      f.translated_inputs do |t|
        t.input :title
        t.input :lead
        t.input :link
      end
    end

    f.inputs I18n.t('admin.details') do
      f.input :is_displayed
    end

    f.inputs I18n.t('admin.images') do
      f.input :image, :hint => (f.object.image? ? f.template.image_tag(f.object.image.url(:thumb)) : '')
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :lead
      row :link
      bool_row :is_displayed

      row :image do |function_type|
        image_tag(function_type.image.url(:thumb))
      end
    end
  end

end
