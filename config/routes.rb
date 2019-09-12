Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users 

  resources :users, only: [:create, :destroy, :index, :show, :update] do 
    resources :artworks, only: :index
    resources :comments, only: :index
  end 

  resources :artworks, only: [:create, :destroy, :show, :update] do 
    resources :comments, only: [:index]
  end 
  resources :artwork_shares, only: [:create, :destroy]

  resources :comments, only: [:create, :destroy, :index]
    
end
