Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :assets, path: 'list', only: :index
    resources :assets, path: 'create', only: :create
    resources :assets, path: 'read', only: :show
    resources :assets, path: 'modify', only: :update
    resources :assets, path: 'remove', only: :destroy
  end
end
