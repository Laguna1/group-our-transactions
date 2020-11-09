Rails.application.routes.draw do
  get '/external', to: 'pages#external'
  resources :groups, except: [:edit]
  resources :transactions, except: [:edit, :delete]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :users, except: [:edit, :delete]
  get '/new', to: "sessions#new"
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pages#index'
end
