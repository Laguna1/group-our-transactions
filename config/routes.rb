Rails.application.routes.draw do
  resources :external_transactions
  resources :groups
  resources :transactions
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :users
  root "sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pages#index'
end
