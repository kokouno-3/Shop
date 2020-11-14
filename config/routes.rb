Rails.application.routes.draw do
    
  get 'customers/index'
  get 'customers/show'
  get 'customers/edit'
  get 'customers/update'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  namespace :admins do
  resources :homes, only:[:top]
  resources :customers, only:[:index, :edit, :show, :update]
  resources :items, only:[:index, :new, :creste, :show, :edit, :update]
end
  root "admins/homes#top"
  devise_for :customers
  root 'homes#top'
  get '/about'=> 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
