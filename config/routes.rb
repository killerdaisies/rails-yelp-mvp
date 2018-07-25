Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:new, :index, :show, :create, :edit, :update] do
    resources :reviews, only: [ :new, :create ]
  end
  root to: 'restaurants#index'
end
