class LoginController < ApplicationController
  def login_form
    @provinces = Province.order(:name)
    render partial: 'login', :provinces => @provinces
  end

  def login
    logger.debug "LOGG INFO!!!!!: #{params[:param0]}"
  end

  def register
    @new_customer = Customer.create({
        :first_name => params[:register_first_name],
        :last_name => params[:register_last_name],
        :password => params[:register_password],
        :address => params[:register_address],
        :city => params[:register_city],
        :postal_code => params[:register_postal_code],
        :province => Province.where("name = ?", params[:register_province]),
        :username => params[:register_username]
      })

    logger.debug @new_customer
  end
end