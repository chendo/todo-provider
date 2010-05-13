ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  map.resources :todo_items

  map.root :controller => 'todo_items'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
