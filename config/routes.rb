Rails.application.routes.draw do
  devise_for :users

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
      get 'save_step1'
      get 'step2'
      get 'save_step2'
      get 'step3'
      get 'save_step3'
      # get 'payment'
      # post 'session_payment'
      get 'complete' # 登録完了後のページ
    end
  end
end
