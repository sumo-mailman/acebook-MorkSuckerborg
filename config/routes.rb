Rails.application.routes.draw do  
  resources :posts do
    member do
      delete :purge_image
    end
  end

  devise_for :users
  
  root 'posts#index'
  # get "welcome/index"  
  # root to: "welcome#index"  
end
