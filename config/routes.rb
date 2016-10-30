Rails.application.routes.draw do
 
  root to: 'landing#index'

  resources :spots do
    resources :reservations
  end
  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'
end
