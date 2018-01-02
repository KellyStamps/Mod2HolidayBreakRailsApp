Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cities, only: [:index, :show, :new, :create, :edit, :update]
  resources :buildings, only: [:index, :show, :new, :create, :edit, :update]
  resources :landmarks, only: [:index, :show, :new, :create, :edit, :update]
  resources :figures, only: [:show, :index, :new, :create, :destroy]

  resources :users
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
