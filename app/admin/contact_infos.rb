ActiveAdmin.register ContactInfo do

  belongs_to :province

  permit_params :title, :content, :address, :city, :province_id, :postal_code, :email, :phone_number

end
