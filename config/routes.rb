Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }

  root "items#index"

  get 'mypage', to: 'items#mypage'
  get 'logout', to: 'items#logout'
  get 'identification', to: 'items#identification'
  get 'edit_profile', to: 'items#edit_profile'
  get 'credit', to: 'items#credit'

  resources :items, only: [:index, :show ,:new]
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
end
