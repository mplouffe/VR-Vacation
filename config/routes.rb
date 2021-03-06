Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#index'
 
  resources :line_items, only: [:create, :update, :destroy]
  resource :cart, only: [:show] 
  resources :packages, only: [:index] do
    member do
      post :add_to_cart
      post :removed_from_cart
    end
  end

  resources :pages, only: [:index] do
    member do
      post :search
    end
  end

  resource :charges, only: [:new, :create]

  get '/login/login', to: 'login#login_form'
  post '/login/login', to: 'login#login'
  post '/login/register', to: 'login#register'
  post '/login/logout', to: 'login#logout'

  get '/', to: 'pages#index'
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'search', to: 'pages#search'

  get '/package', to: 'packages#show', as: 'info'
  
end
