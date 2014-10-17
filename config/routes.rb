Rails.application.routes.draw do
  root 'shirts#index'
  resources :products
  resources :contact_forms
end
