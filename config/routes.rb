Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :authors, except: [:delete]

  root to: 'posts#index'
end
