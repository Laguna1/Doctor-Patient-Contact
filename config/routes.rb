# frozen_string_literal: true

Rails.application.routes.draw do
  post '/users/:id/book', to: 'users#book', as: 'book_doctor'
  post '/users/:id/unbook', to: 'users#unbook', as: 'unbook_doctor'
  resources :roles
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
