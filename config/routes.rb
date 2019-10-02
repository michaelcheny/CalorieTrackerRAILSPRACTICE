Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root 'welcome#index'

  resources :meals
  resources :users, except: [:index, :destroy] do
    resources :meals, only: [:index, :show]
  end
  
  get "/signup" => 'user#new', as 'signup'
  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create'
  delete "/logout" => 'sessions#destroy'

  get 'dashboard' => 'users#dashboard', as: 'dashboard'
end
