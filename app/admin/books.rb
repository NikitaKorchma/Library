ActiveAdmin.register Book do

  permit_params :title, :description, :image, :category_id, author_ids: []

  form do |f|
    f.inputs "Movie" do
      f.input :category
      f.input :title
      f.input :description
      f.input :image, as: :file
      f.input :authors, as: :select, :input_html => {:multiple => true}
    end
    actions
  end

end
