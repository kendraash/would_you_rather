Rails.application.routes.draw do
  root :to => 'home#index'
  resources :choices, :except => [:index, :show, :edit] do
    resources :comments
  end
end
