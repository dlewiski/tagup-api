Rails.application.routes.draw do
  root 'welcome#index'
  # Specified path properties to match route naming with requirements in README. Depending on architecture discussions and company needs, I might encourge to stick with the tradiational Rails routing to utilize the strength and consitency of this technology. Normally this would be done by just declaring the following line

  # namespace :api do
  #  resources :assets, only: [:index, :create, :show, :update, :destroy]
  # end


  namespace :api do
    resources :assets, path: 'list', only: :index
    resources :assets, path: 'create', only: :create
    resources :assets, path: 'read', only: :show
    resources :assets, path: 'modify', only: :update
    resources :assets, path: 'remove', only: :destroy
  end
end
