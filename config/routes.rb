Rails.application.routes.draw do

  root 'pages#index'

  get 'sessions/new'
  get 'pages/index'

  get 'profile' => 'pages#profile'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'jobs' => 'pages#jobs'

  # get 'profile', to: 'pages#show'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
