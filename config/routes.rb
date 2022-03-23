Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :events do
    resources :attendees_events, only: [:new, :create, :destroy]
    member do
      get 'attend'
      get 'unattend'
    end
  end

  get '/users/:id/' => 'users#show', :as => :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
end
