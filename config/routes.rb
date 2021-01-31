Rails.application.routes.draw do
  resources :houses do 
    get :picture, on: :member
  end
  resources :viewings
  resources :users
  get '/', to: 'application#all_data'
end
