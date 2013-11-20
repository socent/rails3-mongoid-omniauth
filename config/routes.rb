Rails3MongoidOmniauth::Application.routes.draw do

  resources :users

  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/auth/failure' => 'sessions#failure'
  match '/signout' => 'sessions#destroy', :as => :signout

  root :to => 'home#index'
  
end
