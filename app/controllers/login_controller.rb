class LoginController < ApplicationController
  def login
    render partial: 'login'
  end
end