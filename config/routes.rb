Rails.application.routes.draw do
  resources :houses, except: %i[create update destroy] do 
    get :picture, on: :member
  end
  resources :viewings, except: %i[update]
  resources :users, except: %i[update, destroy]
  get '/', to: 'application#all_data'
end
