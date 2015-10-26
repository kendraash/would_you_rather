Rails.application.routes.draw do
  root :to => 'home#index'
  resources :choices, :except => [:index]
end
