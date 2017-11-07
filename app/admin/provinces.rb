ActiveAdmin.register Province do

  permit_params :name, :abbrv, :pst_rate, :gst_rate, :hst_rate

end
