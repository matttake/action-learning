Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  namespace :posts do
    resources :searches,only: :index
  end
  
  resources :posts do
    collection do
      get "list"
    end
  end
end
