ActiveAdmin.register Author do

  permit_params :name, :avatar

  form do |f|
    f.inputs "Author" do
      f.input :name
      f.input :avatar, as: :file
    end
    actions
  end

end
