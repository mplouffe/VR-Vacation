ActiveAdmin.register Package do

  permit_params :name, :description, :category_id, :location_id

end
