Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users

  resources :statistics
  resources :hops
  resources :users
  resources :items do
  	put 'active' => 'items#active', on: :member
    put 'inactive' => 'items#inactive', on: :member
  end
  resources :companies do
  	resources :items
    resources :statistics
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end