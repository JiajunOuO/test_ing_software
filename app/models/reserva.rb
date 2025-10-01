class Reserva < ApplicationRecord
  belongs_to :opcion
  
  validates :fecha, presence: true
  validates :estado, presence: true
  validates :usuario_id, presence: true
  
  enum estado: {
    pendiente: 'PENDIENTE',
    confirmada: 'CONFIRMADA', 
  }
end
