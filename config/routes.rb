Rails.application.routes.draw do
  get 'library_game/index'
  devise_for :users
  root to: 'pages#home'
  get '/games', to: 'games#index', as: :index
  get '/user/:id', to: 'user#show'
  resource :user, only: [] do
  resources :games, only: [:create, :destroy]
end
  get '/user/:id/library', to: 'library#index', as: :library
  post '/user/:id/library', to: 'games#create', as: :create
  delete 'user/:id/library:id', to: 'games#destroy', as: :destroy
end
