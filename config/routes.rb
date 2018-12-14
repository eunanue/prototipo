Rails.application.routes.draw do
    
    get 'home/index'
    get 'home/mis_compras'
    get 'home/historicos'
    get  '/login',   to: 'sessions#new'
    post '/login',   to: 'sessions#create'
    get  '/logout',  to: 'sessions#destroy'
  
    get 'suscripcion/:id'    , to: 'operacion#suscripcion'
    get 'desuscripcion/:id'    , to: 'operacion#desuscripcion'
    post '/suscripcion/operacion/create', to: 'operacion#create'
    post '/desuscripcion/operacion/delete', to: 'operacion#delete'
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
