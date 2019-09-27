Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  resources :organization_profiles
  resources :volunteer_profiles
  resources :events
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
