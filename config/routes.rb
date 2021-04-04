Rails.application.routes.draw do
  resources :users do
    resources :subscriptions
  end
  resources :streaming_services  do
    resources :subscriptions
  end
  
  resources :top_titles
  resources :streaming_services
  resources :subscriptions

  get '/', to: "subscriptions#index"
  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
  get "/auth/google_oauth2/callback", to: "sessions#create_with_google"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end