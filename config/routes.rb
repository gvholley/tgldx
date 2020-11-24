Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/games', to: 'games#index', as: :index
  get '/user/:id', to: 'user#show'
end
