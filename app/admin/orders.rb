ActiveAdmin.register Order do

  permit_params :customer_id, :order_status_id
  form do |f|
    f.inputs "Add/Edit Post" do
      f.input :customer_id, :as => :select, :collection => Customer.all.collect{|customer|[customer["username"], customer["id"]]}
      f.input :order_status_id, :as => :select, :collection => OrderStatus.all.collect{|status|[status["name"], status["id"]]}
    end
    f.actions
  end

end
