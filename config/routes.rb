Rails.application.routes.draw do
  devise_for :users

  root "items#index"

  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'payment', to: 'users#payment'
  get 'complete', to: 'users#complete'

resources :items, only: [:index, :show ,:new]

end
