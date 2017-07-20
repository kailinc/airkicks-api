# frozen_string_literal: true
Rails.application.routes.draw do

  # COLLECTION routes
  resources :collections, only: [:index, :show, :create, :destroy, :update]

  # SHOE ROUTES
  resources :shoes, only: [:index, :show, :destroy, :create, :update]
  # USER ROUTES
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/user-shoes/:id' => 'users#usershoes'
  resources :users, only: [:index, :show]

end
