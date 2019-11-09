Rails.application.routes.draw do
  get 'welcome/index'



  post 'users/login' => 'users#login'
  get 'users/new' => 'users#new'
  post 'users/create' => 'users#create'


  get 'users/userCreated/:id' => 'users#userCreated'
  get 'users/userNotCreated' => 'users#userNotCreated'

  resources :recipes do 
    resources :steps
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
