ActiveAdmin.register Event do

  permit_params :name, :description, :price, :event_type_id

end
