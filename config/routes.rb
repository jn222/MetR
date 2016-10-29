Rails.application.routes.draw do
  resources :spots do
	  resources :bookings
	end
  root to: 'spots#index'

  get 'spots/new'

  get 'spots/create'

  get 'spots/update'

  get 'spots/edit'

  get 'spots/destroy'

  get 'spots/index'

  get 'spots/show'

  get 'articles/new'

  get 'articles/create'

  get 'articles/update'

  get 'articles/edit'

  get 'articles/destroy'

  get 'articles/index'

  get 'articles/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spots
  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'
end
