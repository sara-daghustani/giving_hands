Rails.application.routes.draw do
  resources :organization_profiles
  resources :volunteer_profiles
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
