class Seccion < ApplicationRecord
  belongs_to :resort
  has_many :opcions, dependent: :destroy
end
