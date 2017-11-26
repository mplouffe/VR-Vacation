ActiveAdmin.register Package do

  permit_params :name, :description, :category_id, :screenshot, :package_content_id, :price, :discount_id

    form do |f|
    f.inputs "Add/Edit Post" do
      f.input :category
      f.input :name
      f.input :description
      f.input :price
      f.input :screenshot
      f.input :discount
      f.input :package_content_id, :as => :select
    end
    f.actions
  end
end
