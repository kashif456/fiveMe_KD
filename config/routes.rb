Rails.application.routes.draw do
  root 'profiles#index'
  resources :profiles
  #devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'tags/:tag', to: "profiles#index", as: :tag
end
