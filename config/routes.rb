Rails.application.routes.draw do
  # resources :likes
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :tweets do
    resources :likes
  end
  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
