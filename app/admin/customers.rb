ActiveAdmin.register Customer do

  permit_params :first_name, :last_name, :address, :city, :province_id, :postal_code, :email, :phone_number

end
