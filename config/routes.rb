Simple::Application.routes.draw do
  get "pages/index"

  get "pagex/index"

  get 'logout' => 'sessions#destroy', :as => 'logout'
  get 'login'  => 'sessions#new',     :as => 'login'
  get 'signup' => 'users#new',        :as => 'signup'

  resources :users
  resources :sessions

  root :to => 'pages#index'
end
