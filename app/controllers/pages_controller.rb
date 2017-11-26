class PagesController < ApplicationController
  respond_to :html, :json

  def index
    @line_item = current_order.line_items.new

    if params.has_key?(:discount)
      @packages = Package.includes(:discount).where("discount_id IS NOT NULL").page(params[:page]).per(6)
    elsif params.has_key?(:date)
      @packages = Package.includes(:discount)
    elsif params.has_key?(:category)
      @packages = Package.joins(:category).includes(:discount).where('categories.name == ?', params[:category]).page(params[:page]).per(6)
    elsif params.has_key?(:search)
      @packages = Package.includes(:discount).where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").page(params[:page]).per(6)
    else
      @packages = Package.joins(:category).includes(:discount).where('categories.name != ?', 'Custom').page(params[:page]).per(6)
    end
  end

  def about
    @about_contents = AboutContent.all
  end

  def contact
    @contact_infos = ContactInfo.includes(:province).all
  end

end
