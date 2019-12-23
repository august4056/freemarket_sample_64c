Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  
  root "items#index"

  get 'mypage', to: 'items#mypage'
  get 'logout', to: 'items#logout'
  get 'identification', to: 'items#identification'
  get 'edit_profile', to: 'items#edit_profile'
  get 'credit', to: 'cards#credit'
  
  get 'registration', to: 'users#registration'
  get 'login', to: 'users#login'
  get 'info', to: 'users#info'
  get 'complete', to: 'users#complete'
  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'payment', to: 'signup#payment'
  
  resources :items
  resources :users, only: [:new, :edit, :create, :show]
  
  get 'logout', to: 'users#logout'
  get 'item_edit_delete', to: 'items#item_edit_delete'
  get 'item_confirm/:id', to: 'purchase#item_confirm'

  resources :signup, except:[:index,:show] do
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

