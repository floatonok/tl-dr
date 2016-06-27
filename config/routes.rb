Rails.application.routes.draw do

  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  # resources :posts
  # resources :users
  # resources :summaries

  root 'posts#index', as: 'home'

  get 'sign_in', to: 'sessions#new'
  delete 'sign_out', to: 'sessions#destroy'

  resources :sessions, only: [:create]

  resources :users do
    resources :posts do
      resources :summaries, shallow: true
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
