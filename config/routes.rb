Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :comment
  end
end
