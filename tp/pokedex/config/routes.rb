Rails.application.routes.draw do
  get 'comments/index'
  root 'users#index'
  get 'users/list_user' => 'users#list_user'
  get 'users/login' => 'users#login'
  post 'users/login' => 'users#check'
  delete 'users' => 'users#logout'

  resources :pokemons, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create, :show]
  resources :comments, only: [:index, :show, :create, :update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
