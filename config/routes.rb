Todo::Application.routes.draw do
  resources :users do 
    resources :lists, except: [:index]
  end

  resources :lists, only: [] do
    resources :items
  end

  resources :items, only: [:destroy]

  resources :sessions, only: [:create]

  root to: 'users#new'
end
