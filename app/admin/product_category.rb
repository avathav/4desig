ActiveAdmin.register ProductCategory do

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
  permit_params  :translations_attributes => [:id, :title, :description, :locale]
  config.filters = false

  index :download_links => false do
    column :title
    actions
  end

  form do |f|
    f.inputs I18n.t('admin.translations') do
      f.translated_inputs do |t|
        t.input :title
        t.input :description
      end
    end

    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
    end
  end

end
