Rails.application.routes.draw do
  # Página principal con menú
  root 'reserva_home#index'
  
  # Rutas para reservas (CRUD completo)
  resources :reservas

end
