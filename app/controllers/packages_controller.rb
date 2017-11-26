class PackagesController < ApplicationController
  before_action :initialize_session

  private

  def initialize_session
    session[:cart_total] ||= 0
    session[:items_in_cart] ||= []
  end

end
