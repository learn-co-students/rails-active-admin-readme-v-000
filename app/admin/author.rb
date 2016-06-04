ActiveAdmin.register Author do
    permit_params :name, :genre
    actions :all, except: [:destroy]
end
