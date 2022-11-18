# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cards, only: [:index]
  get 'cards/random/:total', to: 'cards#random', as: 'random'
end
