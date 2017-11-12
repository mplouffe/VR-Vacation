class PagesController < ApplicationController

  def index
  end

  def about
    @about_info = AboutContent.all
  end

  def contact
    @contact_info = ContactInfo.all
  end

end
