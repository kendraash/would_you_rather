Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'
  resources :choices, :except => [:index, :show, :edit] do
    resources :comments
  end
end
