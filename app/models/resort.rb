class Resort < ApplicationRecord
  has_many :seccions, dependent: :destroy
  has_many :opcions, through: :seccions
end
