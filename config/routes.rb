Rails.application.routes.draw do
  devise_for :users
 resources :books do
   resources :reviews
 end
 root 'books#index'
 devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
 end
end
