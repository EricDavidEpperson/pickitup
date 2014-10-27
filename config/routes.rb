Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'shirts#index'
  resources :products
  resources :contact_forms
end
