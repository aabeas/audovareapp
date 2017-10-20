Rails.application.routes.draw do

  root 'pages#index'

  get 'sessions/new'
  get 'pages/index'

  get 'profile' => 'pages#profile'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'jobs' => 'pages#jobs'

  # get 'profile', to: 'pages#show'
  get 'signup', to: 'users#new'
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :users
  resources :sessions


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
