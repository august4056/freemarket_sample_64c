Rails.application.routes.draw do
  devise_for :users

  root "items#index"

  get 'mypage', to: 'items#mypage'
  get 'logout', to: 'items#logout'
  get 'edit_profile', to: 'items#edit_profile'
  get 'show', to: 'items#show'
  
  get 'registration', to: 'users#registration'
  get 'login', to: 'users#login'
  get 'info', to: 'users#info'
  get 'complete', to: 'users#complete'
  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'payment', to: 'users#payment'
  
  
  
resources :items, only: [:index, :show ,:new, :edit, :update]
resources :users, only: [:new, :edit, :create, :show]

end
