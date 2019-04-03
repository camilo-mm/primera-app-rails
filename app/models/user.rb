class User < ApplicationRecord
  #validates :email, format: {width: add expresion regular...}
  validates :phone, numericality: true
  #tambien asi:
  #validate :phone, numericality: {only_integer: true}
  #validate :phone, numericality: {greater_than_or_equal_to: 10}

  has_many :houses
  has_many :posts
  has_many :notes
end
