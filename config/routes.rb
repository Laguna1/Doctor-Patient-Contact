Rails.application.routes.draw do
  post '/book', to: 'relationships#create', as: :book
  post '/unbook', to: 'relationships#destroy', as: :unbook
  resources :roles
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
