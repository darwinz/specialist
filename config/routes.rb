Rails.application.routes.draw do
  resources :complex_list_items
  resources :string_list_items
  resources :number_list_items
  resources :lists
  resources :list_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "index#index"
end
