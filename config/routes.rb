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
  

  get 'purchase/:id', to: 'purchase#index'

  resources :purchase, only: [:index,:update] do
    member do
      post 'pay'
      get 'done'
    end
  end
  
  resources :users, only: [:new, :edit, :create, :show]
  

  resources :signup, except:[:index,:show] do
    collection do
      get 'step1'
      post 'save_step1'
      post 'step2'
      post 'save_step2'
      post 'step3'
      post 'save_step3'
      get 'complete' # 登録完了後のページ
    end
  end


  get 'mypage/credit/:id', to: 'cards#credit'
  get 'registration', to: 'cards#registration'

  resources :cards, only: [:new, :create, :show, :destroy]

end

