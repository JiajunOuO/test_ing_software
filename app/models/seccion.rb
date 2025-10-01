class Seccion < ApplicationRecord
  belongs_to :resort
  has_many :opciones
end
