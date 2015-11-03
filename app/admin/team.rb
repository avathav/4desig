ActiveAdmin.register Team do

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
  permit_params :avatar, :firstname, :surname, :fb_link, :twitter_link, :google_link, :translations_attributes => [:id, :position, :description, :locale]
  config.filters = false

  index :download_links => false do
    column I18n.t('admin.picture') do |resource|
      image_tag(resource.avatar.url(:thumb)) if resource.avatar?
    end
    column :firstname
    column :surname
    column :position
    actions
  end

  form do |f|
    f.inputs I18n.t('admin.translations') do
      f.translated_inputs do |t|
        t.input :position
        t.input :description
      end
    end

    f.inputs I18n.t('admin.details') do
      f.input :firstname
      f.input :surname
      f.input :fb_link
      f.input :twitter_link
      f.input :google_link
    end

    f.inputs I18n.t('admin.picture') do
      f.input :avatar, :hint => (f.object.avatar ? f.template.image_tag(f.object.avatar.url(:thumb)) : '')
    end
    f.actions
  end

  show do
    attributes_table do
      row :firstname
      row :surname
      row :position
      row :description
      row :fb_link
      row :twitter_link
      row :google_link

      row :avatar do |function_type|
        image_tag(function_type.avatar.url(:thumb))
      end
    end
  end

end
