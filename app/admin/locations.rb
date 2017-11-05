ActiveAdmin.register Location do

  permit_params :name, :description, :game, :system, :price

end
