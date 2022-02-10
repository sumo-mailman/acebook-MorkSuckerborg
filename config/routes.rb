Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # get 'sessions/destroy'
  get 'registrations/create'
  get 'registrations/new'
  get 'registrations/user_params'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  
  resources :posts
end
