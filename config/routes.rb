Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }

  resource :profile, :controller => "user_profiles"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  namespace :admin do
    resources :lines
    resources :batches
    resources :registrations
  end

  resources :lines do
    get "registrations" => "lines#registrations"
  end
  resources :kins
  resources :registrations do
    member do
      get "steps/1" => "registrations#step1", :as => :step1
      patch "steps/1/update" => "registrations#step1_update", :as => :update_step1
      get "steps/2" => "registrations#step2", :as => :step2
      patch "steps/2/update" => "registrations#step2_update", :as => :update_step2
      get "steps/3" => "registrations#step3", :as => :step3
      patch "steps/3/update" => "registrations#step3_update", :as => :update_step3
    end
  end
end
