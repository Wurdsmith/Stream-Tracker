Rails.application.routes.draw do
  resources :users, except: [:show, :index, :new, :create, :destroy, :patch, :put] do
    resources :subscriptions, except: [:show, :edit, :update, :destroy, :put]
  end
  resources :streaming_services, except: [:put, :patch, :destroy, :update]  do
    resources :subscriptions, only: [:new, :create, :edit]
  end
  
  resources :top_titles
  resources :streaming_services
  resources :subscriptions, only: [:new, :create, :index, :edit, :update, :destroy]

  get '/', to: "streaming_services#index"
  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
  get "/auth/google_oauth2/callback", to: "sessions#create_with_google"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end