ActiveAdmin.register Author do
  permit_params :name, :genre
  actions :all, except: [:destroy]
 
  # form do |f|
  #   inputs 'Author' do
  #     f.input :name
  #     # f.input :genre
  #   end
  #   f.semantic_errors
  #   f.actions
  # end
end