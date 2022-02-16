Rails.application.routes.draw do  
  resources :rooms do
    resources :messages
  end

  resources :posts do
    member do
      delete :purge_image
    end
  end

  devise_for :users
  root 'posts#index'

  get 'user/:id', to: 'users#show', as: 'user'
end
