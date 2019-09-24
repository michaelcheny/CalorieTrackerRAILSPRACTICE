Rails.application.routes.draw do

  root 'welcome#index'

  resources :meals
  resources :users, except: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create'
  get 'dashboard' => 'users#dashboard', as: 'dashboard'
end
