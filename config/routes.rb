Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'

root :to => 'welcome#index'

resources :users
resources :sessions

resources :photos do
  resources :tags
end

resources :users do
  resources :photos
end

end
