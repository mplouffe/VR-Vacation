class PagesController < ApplicationController

  def index
    @packages = Package.joins(:category).where('categories.name != ?', 'Custom').page(params[:page]).per(5)
  end

  def about
    @about_contents = AboutContent.all
  end

  def contact
    @contact_infos = ContactInfo.includes(:province).all
  end

end
