ActiveAdmin.register Author do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :name, :genre #only modify name/genre attributes
  actions :all, except: [:destroy] #removes delete button and destroy functionality (no destroy routes)

  form do |f| #overrides default edit form, in this case to match strong params above
    inputs 'Author' do
      f.input :name
      f.input :genre
    end
    f.semantic_errors
    f.actions
  end

end
