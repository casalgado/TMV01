TVM01::Application.routes.draw do
  
resources :users
resources :sessions, only: [:new, :create, :destroy]

root 'staticpages#home'

match '/signup',  to: 'users#new',            via: 'get'
match '/signin',  to: 'sessions#new',         via: 'get'
match '/signout', to: 'sessions#destroy',     via: 'delete'

  get "users/create"
  get "users/show"
  get "users/delete"
  

end
