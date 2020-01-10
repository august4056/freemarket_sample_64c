Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  
  root "items#index"

  get 'mypage/:id', to: 'items#mypage'
  get 'logout', to: 'items#logout'
  get 'identification', to: 'items#identification'
  get 'edit_profile', to: 'items#edit_profile'
  
  get 'registration', to: 'users#registration'
  get 'login', to: 'users#login'
  get 'info', to: 'users#info'
  get 'complete', to: 'users#complete'
  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'logout', to: 'users#logout'
  
  get 'mypage/:id/credit', to: 'cards#credit'
  get 'credit/:id', to: 'cards#credit'
  get 'registration', to: 'cards#registration'

  get 'item_confirm/:id', to: 'purchase#item_confirm'
  post 'pay', to: 'purchase#pay'
  get 'done/:id', to: 'purchase#done'
  
  resources :items
  resources :users, only: [:new, :edit, :create, :show]
  
  get 'item_edit_delete', to: 'items#item_edit_delete'

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

