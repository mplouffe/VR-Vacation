ActiveAdmin.register Event do

  permit_params :name, :description, :price, :event_type_id

  form do |f|
    f.inputs "Add/Edit Post" do
      f.input :event_type
      f.input :name
      f.input :description
      f.input :price
      f.input :characters, :as => :check_boxes
    end
  end

end
