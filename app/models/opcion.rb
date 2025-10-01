class Opcion < ApplicationRecord
  belongs_to :seccion
  has_many :reservas
end
