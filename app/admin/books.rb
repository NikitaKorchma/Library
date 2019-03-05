ActiveAdmin.register Book do

  permit_params :title, :description, :image

  form do |f|
    f.inputs "Movie" do
      f.input :title
      f.input :description
      f.input :image, as: :file
    end
    actions
  end

end
