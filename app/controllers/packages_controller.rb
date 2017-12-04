class PackagesController < ApplicationController
  before_action :initialize_session

  def show
    @package = Package.where('id = ?', params[:id]).first
  end

  private

  def initialize_session
    session[:cart_total] ||= 0
    session[:items_in_cart] ||= []
  end


end
