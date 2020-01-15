Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  
  root "items#index"

  resources :items
  get 'logout', to: 'items#logout'
  get 'identification', to: 'items#identification'
  get 'edit_profile', to: 'items#edit_profile'
  get 'item_edit_delete', to: 'items#item_edit_delete'

  get 'identification', to: 'items#identification'
  get 'identification', to: 'items#identification'
  get 'mypage', to: 'items#mypage'
  

  get 'item_confirm/:id', to: 'purchase#item_confirm'
  post 'item_confirm/:id', to: 'purchase#item_confirm'
  post 'pay', to: 'purchase#pay'
  get 'done/:id', to: 'purchase#done'
  post 'done/:id', to: 'purchase#done'
  
  
  resources :users, only: [:new, :edit, :create, :show]
  

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


  get 'mypage/credit/:id', to: 'cards#credit'
  get 'registration', to: 'cards#registration'

  resources :cards, only: [:new, :create, :show, :destroy]
end

