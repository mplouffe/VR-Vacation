ActiveAdmin.register Package do

  permit_params :name, :description, :category_id, :location_id, :screenshot

    form do |f|
    f.inputs "Add/Edit Post" do
      f.input :category
      f.input :location
      f.input :name
      f.input :description
      f.input :screenshot
      f.input :discounts, :as => :check_boxes
      f.input :events, :as => :check_boxes
    end
    f.actions
  end
end
