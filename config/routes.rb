Rails.application.routes.draw do


  root "posts#index"
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :posts

  resources :likes, only: [:create, :destroy]
  get 'pages/media'
  get 'pages/tos'
  get 'posts/:id/download', to: 'posts#download', as: 'download_post'
end
