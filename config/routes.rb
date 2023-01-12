Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'
   post "/users/sign_up"=>'devise/registrations#create'
   end
  resources :students
  post "/bulk_create"=>"students#bulk_create"
  get "/promote/students"=>"students#promote_students"
  get "/export/students"=>"students#export_students"
  root "students#index"
end
