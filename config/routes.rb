Simple::Application.routes.draw do
  get  'pages/index'

  get  'logout' => 'sessions#destroy', :as => 'logout'
  get  'login'  => 'sessions#new',     :as => 'login'
  post 'login'  => 'sessions#create',  :as => 'login'
  get  'signup' => 'users#new',        :as => 'signup'
  post 'signup' => 'users#create',     :as => 'signup'

  # resources :users
  # resources :sessions

  root :to => 'pages#index'
end
