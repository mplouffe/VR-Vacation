class PagesController < ApplicationController

  def index
    if params.has_key?(:category)
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
