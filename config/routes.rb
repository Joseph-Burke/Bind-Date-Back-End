Rails.application.routes.draw do
  resources :houses
  resources :viewings
  resources :users
  resources :projects
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
