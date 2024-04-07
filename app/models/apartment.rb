class Apartment < ApplicationRecord
  belongs_to :building

  validates :number, uniqueness: { scope: :building_id, message: 'ya existe en este edificio' }
end
