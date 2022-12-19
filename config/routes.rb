# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'pages/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#show'
  resources :cards, only: [:index]
  get 'cards/random/:total', to: 'cards#random', as: 'random'
end
