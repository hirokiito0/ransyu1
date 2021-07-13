Rails.application.routes.draw do
  root to: 'homes#top'

  devise_for :users
  get 'users/sign_out' => 'devise/sessions#destroy'
  resources :users

  get  'home/about' => 'homes#about'
end
