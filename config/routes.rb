ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session
  map.root :controller => "welcome"
  map.resources :doctors
  map.resources :portfollios
  map.resources :proffesions
#  map.root :login
  # See how all your routes lay out with "rake routes"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
