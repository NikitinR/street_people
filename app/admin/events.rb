ActiveAdmin.register Event do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :image
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :ckeditor 
      f.input :image
    end
  f.actions
  end
end
