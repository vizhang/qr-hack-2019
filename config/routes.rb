Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
  get '/stores/:id'   => 'stores#index'
  get '/items'        => 'items#index'
end
