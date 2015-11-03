ActiveAdmin.register StaticPage do

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
  permit_params  :code, :is_display, :translations_attributes => [:id, :title, :lead, :content, :locale]
  config.filters = false

  index :download_links => false do
    column :code
    column :title
    column :lead
    column :content
    bool_column :is_display
    actions
  end

  form do |f|
    f.inputs I18n.t('admin.translations') do
      f.translated_inputs do |t|
        t.input :title
        t.input :lead
        t.input :content
      end
    end

    f.inputs I18n.t('admin.details') do
      f.input :code, as: :select, collection: StaticPage.codes.keys
      f.input :is_display
    end

    f.actions
  end

  show do
    attributes_table do
      row :code
      row :title
      row :lead
      row :content
      bool_row :is_display
    end
  end

end
