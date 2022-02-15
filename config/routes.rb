Rails.application.routes.draw do  
  resources :posts do
    member do
      delete :purge_image
    end
  end

  devise_for :users
  root 'posts#index'
end
