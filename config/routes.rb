Rails.application.routes.draw do

  root 'pages#home'
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :owners
  resources :tacos
  resources :critters
  resources :products

  resources :users, only: [:show], as: :user

  get 'about', to: 'pages#about', as: :about
  get 'pages/awaiting_confirmation', as: :awaiting_confirmation
  get 'dump_download', to: 'pages#dump_download', as: :dump_download

end
