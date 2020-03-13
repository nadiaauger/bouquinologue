ActiveAdmin.register Book do
  form do |f|
    f.inputs "Livre" do
      f.input :author
      f.input :title
      f.input :editor
      f.input :year
      f.input :price
    end
    f.inputs "Category" do
      f.input :category
    end
    f.actions
  end
  permit_params :author, :title, :editor, :year, :price, :category # etc...
end
