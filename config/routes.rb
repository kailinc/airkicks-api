# frozen_string_literal: true
Rails.application.routes.draw do

  # CONNECT SHOE COLLECTIONS
  resources :connect_shoe_collections, only: [:index, :show, :create, :destroy]


  # COLLECTION routes
  resources :collections, only: [:index, :show, :create, :destroy, :update]

  # SHOE ROUTES
  resources :shoes, only: [:index, :show, :destroy, :create, :update]

  # EXAMPLE ROUTES
  resources :examples, except: [:new, :edit]

  # USER ROUTES
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/user-shoes/:id' => 'users#usershoes'
  get '/user-collections/:id' => 'users#usercollections'
  resources :users, only: [:index, :show]

end
