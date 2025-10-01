Rails.application.routes.draw do
  # Página principal con menú
  root 'home#index'
  
  # Rutas para reservas (CRUD completo)
  resources :reservas
end
