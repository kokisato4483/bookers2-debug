Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destory'
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
 resources :books do
   resource :favorites, only: [:create, :destroy]
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
