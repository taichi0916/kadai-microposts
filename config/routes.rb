Rails.application.routes.draw do
 root to: 'toppages#index'
 
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 delete 'logout', to: 'sessions#destory'
 
 get 'signup', to: 'users#new'
 resources :users, only: [:index, :show, :new, :create] do
   member do
     get :followings
     get :followers
   end
   collection do 
    ger :search
 end
 
 resources :microposts, only: [:create, :destory]
 resources :relationships,only: [:create, :destory]
end