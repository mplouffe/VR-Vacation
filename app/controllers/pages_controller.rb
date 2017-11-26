class PagesController < ApplicationController
  respond_to :html, :json

  def index
    @line_item = current_order.line_items.new

    if params.has_key?(:discount)
      @packages = Package.includes(:discount).where("discount_id IS NOT NULL").order(:name).page(params[:page]).per(6)
    elsif params.has_key?(:date)
      new_date = 1.week.ago
      @packages = Package.includes(:discount).where("packages.created_at >= ?", new_date).order(:name).page(params[:page]).per(6)
    elsif params.has_key?(:category)
      @packages = Package.joins(:category).includes(:discount).where('categories.name == ?', params[:category]).order(:name).page(params[:page]).per(6)
    elsif params.has_key?(:search)
      @packages = Package.includes(:discount).where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").order(:name).page(params[:page]).per(6)
    else
      @packages = Package.joins(:category).includes(:discount).where('categories.name != ?', 'Custom').order(:name).page(params[:page]).per(6)
    end
  end

  def about
    @about_contents = AboutContent.all
  end

  def contact
    @contact_infos = ContactInfo.includes(:province).all
  end

end
