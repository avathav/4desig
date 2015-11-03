ActiveAdmin.register Contact do

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

  config.filters = false
  actions :index, :show, :destroy

  index :download_links => false do
    column :name
    column :surname
    column :email do |resource|
      mail_to resource.email
    end
    column :phone
    column :message

    actions
  end


  show do
    attributes_table do
      row :name
      row :surname
      row :email do |resource|
        mail_to resource.email
      end
      row :phone
      row :message
    end
  end

end
