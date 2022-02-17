Rails.application.routes.draw do
  resources :room_messages
  resources :rooms
  resources :posts do
    resources :comments
    resources :post_likes
    member do
      delete :purge_image
    end
  end

  devise_for :users
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end