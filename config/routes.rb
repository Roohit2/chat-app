Rails.application.routes.draw do
  
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end

  devise_for :users
  root to: "rooms#index"
  get 'messages/index'
  root to: "messages#index"
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
