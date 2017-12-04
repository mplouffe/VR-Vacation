class LoginController < ApplicationController
  def login_form
    @provinces = Province.order(:name)
    @current_user = session[:current_user]

    render partial: 'login', :provinces => @provinces, :current_user => @current_user
  end

  def login
    @current_user = Customer.where("username = ? AND password = ?", params[:login_username], params[:login_pass]).take
    if(!@current_user.nil?)
      session[:current_user] = @current_user
      render :json => @current_user
    else
      render partial: 'failed_login'
    end
  end

  def register
    @prov_id = Province.where("name = ?", params[:register_province]).take.id
    @new_customer = Customer.create({
        first_name: params[:register_first_name],
        last_name:  params[:register_last_name],
        password:   params[:register_password],
        address:    params[:register_address],
        city:       params[:register_city],
        postal_code:params[:register_postal_code],
        province_id:@prov_id,
        email:      params[:register_email],
        username:   params[:register_username]
      })
    session[:current_user] = @new_customer

    render :json => @new_customer
  end

  def logout
    session[:current_user] = nil

    self.login_form
  end
end