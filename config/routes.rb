Rails.application.routes.draw do
  resources :events 
  resources :rsvps
  devise_for :users
  root "events#index"
  get "/my_events", to: "events#my_events" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
