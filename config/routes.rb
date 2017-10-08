Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
end
