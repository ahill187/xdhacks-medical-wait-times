Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  get '/patients' => 'patients#login'
  get '/clinics' => 'clinics#login'
  root 'static_pages#home'
  match '/home',    to: 'static_pages#home',    via: 'get'
  get '/patients/signup'  => 'patients#new'
  post '/patients/signup',  to: 'patients#create'
  get '/clinics/signup'  => 'clinics#new'
  post '/clinics/signup',  to: 'clinics#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #get 'layouts/application'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
