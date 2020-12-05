Rails.application.routes.draw do

  get 'browse/index'
  get 'playground/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "landing_page#index"

  get 'yelp/search'

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  resources :trips do
    resources :actions
    end 


  # resources :trips 
  resources :actions do

  end


  get "/actions/search" => "actions#search", as: "actions_search"

  # get "/trips/:id/actions" => "actions#index", as: "action_index" 


  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  # get '/logout', to: 'sessions#destroy', via: [:get, :post]
  get 'auth/failure', to: redirect('/')

  get '/redirect/:trip_id', to: 'calendar#redirect', as: 'redirect'
  get '/callback/', to: 'calendar#callback', as: 'callback'

  post '/trips/:trip_id/actions/:id' => "actions#create", as: 'trip_action_create'
  
end

