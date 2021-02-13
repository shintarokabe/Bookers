Rails.application.routes.draw do
  get 'books/check'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'books#index'
end
