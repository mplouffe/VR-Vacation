class LoginController < ApplicationController
  def login
    @provinces = Province.order(:name)
    render partial: 'login', :provinces => @provinces
  end
end