Rails.application.routes.draw do
  root 'clients#index'
  resources :organizations do
    resources :clients
    resources :org_branches
  end
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
