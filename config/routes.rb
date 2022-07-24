# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :videos, only: %i[index create destroy]
  resources :users, only: [:index]

  post '/users/current', to: 'users#current'
end
