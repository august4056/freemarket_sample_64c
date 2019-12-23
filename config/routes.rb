Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  root "items#index"

  get 'mypage', to: 'items#mypage'
  get 'logout', to: 'items#logout'
  get 'identification', to: 'items#identification'
  get 'edit_profile', to: 'items#edit_profile'
  get 'credit', to: 'items#credit'
  
  get 'registration', to: 'users#registration'
  get 'login', to: 'users#login'
  get 'info', to: 'users#info'
  get 'complete', to: 'users#complete'
  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'payment', to: 'users#payment'
  
  

  resources :items, only: [:index, :show ,:new, :create, :edit, :update]
  resources :users, only: [:new, :edit, :create, :show]

  get 'logout', to: 'users#logout'
  get 'item_confirm', to: 'users#item_confirm'


end

