Rails.application.routes.draw do
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
