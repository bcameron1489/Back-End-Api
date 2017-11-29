# frozen_string_literal: true

Rails.application.routes.draw do
  resources :fantasy_players, except: %i[new edit]
  resources :players, only: %i[index show]
  # make players read only once user team is created
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
end
