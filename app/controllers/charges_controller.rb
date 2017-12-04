class ChargesController < ApplicationController
  def new
    @amount = session[:order_total].to_f * 100
    @description = "VR Vacation Total"

    @cart_sub_total = 0
    @line_items = current_order.line_items
    @line_items.each do |item|
      @cart_sub_total += item.total_price
    end

    @current_user = session[:current_user]

    if !@current_user.nil?
      @current_provience = Province.where('id = ?', @current_user["province_id"]).first

      if @current_provience.pst_rate == 0.1
        @pst = 0
        @hst = 0.15
        @gst = 0
      else
        @pst = @current_provience.pst_rate
        @hst = 0
        @gst = 0.05
      end

      session[:order_total] = @cart_sub_total * (1 + @pst + @hst + @gst)
      @cart_total = @cart_sub_total * (1 + @pst + @hst + @gst)
      @stripe_pk = Rails.configuration.stripe[:publishable_key]
      @description = "VR Vacation Charges"
    end
  end

  def create

    amount = (session[:order_total].to_f * 100).to_i

    @customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    @charge = Stripe::Charge.create(
      :customer    => @customer.id,
      :amount      => amount,
      :description => 'Rails Stripe customer',
      :currency    => 'cad'
    )

    current_order.order_status_id = 2

    current_order.update(order_status_id: 2)
    current_order.update(customer_id: session[:current_user]["id"])
    current_order.save

    session[:order_id] = nil

    redirect_to root_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    puts e.message
  end
end
