ActiveAdmin.register ContactInfo do

  permit_params :name, :description, :address, :city, :province_id, :postal_code, :email, :phone_number

end
