Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'payment', to: 'users#payment'
  get 'complete', to: 'users#complete'
end
