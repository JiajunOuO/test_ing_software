class Reserva < ApplicationRecord
  belongs_to :opcion
  validates :fecha, presence: true
  validates :estado, inclusion: { in: ["PENDIENTE", "CONFIRMADA", "RECHAZADA", "CANCELADA"] }
end
