Rails.application.routes.draw do
  resources :users, only: [:new, :create] do
    resources :subscriptions, only: [:index]
  end
  resources :streaming_services, only: [:index]  do
    resources :subscriptions, only: [:new, :create, :edit]
  end
  
  resources :subscriptions, only: [:new, :create, :edit, :update, :destroy]

  #get '/', to: "users#new"
  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
  get "/auth/google_oauth2/callback", to: "sessions#create_with_google"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end