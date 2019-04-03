class City < ApplicationRecord
  validates :name, :country, presence: true
  validates :name, length: { minimum: 3 }

  has_many :houses #siempre que se haga un reference, se debe agregar lo que contiene, has_many y belongs_to, el belong va en el modelo diceindo q pertenece a otro y el has_many en el modelo q lo tiene 
end
