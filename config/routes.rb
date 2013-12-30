TVM01::Application.routes.draw do
  
  get "activities/new"
  get "activities/create"
  get "activities/show"
  get "activities/index"
  get "activities/destroy"
  get "activitys/new"
  get "activitys/create"
  get "activitys/show"
  get "activitys/index"
  get "activitys/destroy"
resources :users
resources :activities
resources :sessions, only: [:new, :create, :destroy]

root 'staticpages#home'

match '/signup',  to: 'users#new',            via: 'get'
match '/signin',  to: 'sessions#new',         via: 'get'
match '/signout', to: 'sessions#destroy',     via: 'delete'

  get "users/create"
  get "users/show"
  get "users/delete"
  

end
