class CartsController < ApplicationController

  def show
    @line_items = current_order.line_items

    @visit_count = 1
    
    render partial: 'show'
  end

end
