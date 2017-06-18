Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lines#index'

  namespace :admin do
    resources :lines
    resources :batches
  end

  resources :lines
  resources :registrations
end
