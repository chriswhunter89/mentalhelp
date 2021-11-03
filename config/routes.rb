Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :therapists, only: [:index, :show, :update, :create, :destroy]
  resources :patients, only: [:index, :show, :update, :create, :destroy]
  resources :moodtrackers, only: [:show, :create]
  resources :appointments
  resources :messages, only: [:index, :create, :destroy]
end
