# require a metodos.rb
require_relative 'metodos.rb'

# class alumnos
class Alumnos
  attr_accessor :nombre, :nota1, :nota2, :nota3, :inasistencias
  def initialize(nombre, nota1, nota2, nota3, inasistencias)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @inasistencias = inasistencias
  end
end
