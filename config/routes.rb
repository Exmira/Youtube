Rails.application.routes.draw do
  devise_for :controllers

  resources :likes, only: [:create, :destroy]
  get 'pages/media'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  get 'pages/media'
  get 'posts/:id/download', to: 'posts#download', as: 'download_post'
end
