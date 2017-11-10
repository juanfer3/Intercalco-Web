Rails.application.routes.draw do
  resources :formula_tintas
  resources :base_tintas
  resources :tintas
  resources :mallas
  resources :lineas_uv
  resources :productos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #root :to => 'turnos#index'
end
