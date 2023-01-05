Rails.application.routes.draw do
  resources :students
  root "auth#index"
end
