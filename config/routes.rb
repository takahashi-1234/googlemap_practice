Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"spots#index"
  resources:spots,only:[:create,:new,:show]do
    resources:favorites,only:[:create,:destroy]
  end
end
