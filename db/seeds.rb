# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Reserva.destroy_all
Opcion.destroy_all
Seccion.destroy_all
Resort.destroy_all

# Crear Resorts
resort1 = Resort.create!(nombre: "Resort Paraíso", ubicacion: "Concepcion")
resort2 = Resort.create!(nombre: "Mountain Lodge", ubicacion: "Santiago")

# Crear Secciones
spa = Seccion.create!(nombre: "Spa", descripcion: "Servicios de relajación y bienestar", resort: resort1)
casino = Seccion.create!(nombre: "Casino", descripcion: "Servicios de apuesto", resort: resort1)
hotel = Seccion.create!(nombre: "Hotel", descripcion: "Lugar para relajar y descansar", resort: resort2)
entretenimiento = Seccion.create!(nombre: "Entretenimiento", descripcion: "Deportes y recreación", resort: resort2)

# Crear Opciones
opciones = Opcion.create!([
  { nombre: "Masaje", seccion: spa },
  { nombre: "Termas", seccion: spa },
  { nombre: "Poker", seccion: casino },
  { nombre: "Blackjack", seccion: casino },
  { nombre: "Habitación matrimonial", seccion: hotel },
  { nombre: "Habitación doble", seccion: hotel },
  { nombre: "Bowling", seccion: entretenimiento },
  { nombre: "Pool", seccion: entretenimiento }
])

# Crear algunas reservas de prueba
Reserva.create!([
  { fecha: Date.today + 7, estado: "pendiente", usuario_id: 101, opcion: opciones[0]},
  { fecha: Date.today + 3, estado: "confirmada", usuario_id: 102, opcion: opciones[2]},
  { fecha: Date.today + 14, estado: "pendiente", usuario_id: 103, opcion: opciones[4]}
])

puts "Datos de prueba creados exitosamente!"
puts "   - Resorts: #{Resort.count}"
puts "   - Secciones: #{Seccion.count}"
puts "   - Opciones: #{Opcion.count}"
puts "   - Reservas: #{Reserva.count}"