Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  match '/home',    to: 'static_pages#home',    via: 'get'
  #get 'layouts/application'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
