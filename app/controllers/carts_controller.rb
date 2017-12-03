class CartsController < ApplicationController

  def show
    @line_items = current_order.line_items
    @cart_sub_total = 0

    @line_items.each do |item|
      @cart_sub_total += item.total_price
    end

    @visit_count = 1
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
    end

    render partial: 'show'
  end

end
