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


  get '/', to: 'pages#index'
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  
end
