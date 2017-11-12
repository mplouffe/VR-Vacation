class PagesController < ApplicationController

  def index
  end

  def about
    @about_contents = AboutContent.all
  end

  def contact
    @contact_info = ContactInfo.all
  end

end
