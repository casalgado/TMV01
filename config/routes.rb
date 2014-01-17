TVM01::Application.routes.draw do
  
devise_for :users
resource :user, :only => [:show]
resources :activities

root 'staticpages#home'

end
