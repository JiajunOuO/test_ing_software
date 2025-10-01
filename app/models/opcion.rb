class Opcion < ApplicationRecord
  belongs_to :seccion
  has_many :reservas, dependent: :destroy
  
  def nombre_completo
    "#{nombre} - #{seccion.nombre}"
  end
end