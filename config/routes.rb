Rails.application.routes.draw do
  get 'skill/new'
  get 'skill/edit'
  get 'skill/show'
  get 'skill/delete'
  resources :skills
  resources :users, only: [:new, :create]
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/create'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :profiles do
    resources :skills
  end
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#logout'
  get 'noaccess', to: 'profiles#access'
  get 'myprofile', to: 'profiles#view'
  get 'myprofile/edit', to: 'profiles#edit'
  get 'search', to: 'searches#new'
  post 'search', to: 'searches#searchResults'
  get 'profiles/:id', to: 'patients#show'
  get 'signup', to: 'users#new'
  get 'skills/new', to: 'skills#new'
end
