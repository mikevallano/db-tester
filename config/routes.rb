Rails.application.routes.draw do


  resources :critters
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users, only: [:show], as: :user

  root 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'pages/awaiting_confirmation', as: :awaiting_confirmation
  get 'dump_download', to: 'pages#dump_download', as: :dump_download

end
