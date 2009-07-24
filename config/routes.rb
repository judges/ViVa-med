ActionController::Routing::Routes.draw do |map|
  map.resources :welcomes
  map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
