class PagesController < ApplicationController

  def index
    if params.has_key?(:category)
      @packages = Package.joins(:category).where('categories.name == ?', params[:category]).page(params[:page]).per(5)
    elsif params.has_key?(:search)
      @packages = Package.search(params[:search]).page(params[:page]).per(5)
    else
      @packages = Package.joins(:category).where('categories.name != ?', 'Custom').page(params[:page]).per(5)
    end
  end

  def about
    @about_contents = AboutContent.all
  end

  def contact
    @contact_infos = ContactInfo.includes(:province).all
  end

  def self.search(search)
    where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
  end

end
