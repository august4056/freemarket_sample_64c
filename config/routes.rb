Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }

  root "items#index"

  get 'mypage', to: 'items#mypage'
  get 'logout', to: 'items#logout'
  get 'identification', to: 'items#identification'
  get 'edit_profile', to: 'items#edit_profile'
  
  resources :items
  resources :users, only: [:new, :edit, :create, :show]
  
  get 'logout', to: 'users#logout'
  get 'item_confirm', to: 'users#item_confirm'
  get 'item_edit_delete', to: 'items#item_edit_delete'
  
  get 'credit', to: 'cards#credit'
  get 'registration', to: 'cards#registration'


  resources :signup do
    collection do
      get 'step1'
      post 'save_step1'
      get 'step2'
      post 'save_step2'
      get 'step3'
      post 'save_step3'
      get 'complete' # 登録完了後のページ
    end
  end
end