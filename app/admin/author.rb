ActiveAdmin.register Author do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  #strong params
  permit_params :name, :genre

  # control CRUD actions
  actions :all, except: [:destroy]

  #control form to be in line with strong params
  form do |f|
    inputs 'Author' do
      f.input :name
      f.input :genre
    end
    f.semantic_errors
    f.actions
  end


end
