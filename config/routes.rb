Rails.application.routes.draw do
  namespace :admins do
    resources :items, only:[:index, :new, :creste, :show, :edit, :update]
  end
  root 'homes#top'
  get '/about'=> 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
