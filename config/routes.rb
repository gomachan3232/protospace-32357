Rails.application.routes.draw do
  devise_for :users
  root to:'prototypes#index'

  resources :prototypes do
    resources :comments, only: :create 
  end

  post '/prototypes/:id', to: 'comments#create'

  resources :users , only: :show
 

end
