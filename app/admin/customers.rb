ActiveAdmin.register Customer do

  permit_params :first_name, :last_name, :address, :city, :postal_code, :email

end
