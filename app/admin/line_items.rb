ActiveAdmin.register LineItem do

  permit_params :quantity, :price, :order_id, :package_id

end
