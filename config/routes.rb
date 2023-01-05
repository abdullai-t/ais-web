Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'
   post "/users/sign_up"=>'devise/registrations#create'
   end
  resources :students
  root "students#index"
end
