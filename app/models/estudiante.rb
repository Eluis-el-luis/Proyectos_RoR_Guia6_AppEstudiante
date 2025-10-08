class Estudiante < ApplicationRecord
    # Validar que los campos no estén vacíos
  validates :nombres, :apellidos, :carrera, :carnet, :fecha_nacimiento, :edad, :celular, presence: true

  # Validar que el celular solo contenga números (enteros)
  validates :celular, numericality: { only_integer: true }
end
