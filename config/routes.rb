Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :lessons, only: [:index, :show, :create, :update, :destroy]
      resources :challenges, only: [:index, :show, :create, :update, :destroy]
    end
  end
  

  # post 'find_user' => 'users#find'
  # post 'user_token', to: 'user_token#create'
  # post '/login', to: 'auth#login'

end
