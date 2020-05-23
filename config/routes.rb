Rails.application.routes.draw do
  devise_for :users
  resources :maxims
  root "maxims#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
