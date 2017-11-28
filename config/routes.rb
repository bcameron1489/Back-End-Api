# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]

  get '/players' => 'players#index'
  get '/players/:id' => 'players#show'
  delete '/players/:id' => 'players#destroy'
  patch '/players/:id' => 'players#update'
  post '/players' => 'players#create'
end
