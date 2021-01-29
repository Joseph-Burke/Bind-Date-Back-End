Rails.application.routes.draw do
  resources :houses
  resources :viewings
  resources :users
  get '/', to: 'application#all_data'
end
