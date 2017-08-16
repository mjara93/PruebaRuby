# require a metodos.rb
require_relative 'metodos.rb'

# class alumnos
class Alumnos
  attr_accessor :nombre, :inasistencias
  def initialize(nombre, nota1, nota2, nota3, inasistencias)
    @nombre = nombre
    @nota1 = nota1.to_i
    @nota2 = nota2.to_i
    @nota3 = nota3.to_i
    @inasistencias = inasistencias
  end

  # metodo retorna promedio de notas
  def promedios
    promedio = (@nota1.to_f + @nota2.to_f + @nota3.to_f) / 3
    promedio
  end
end

alumnos = asignador

puts "Ingrese una opcion:\n 1)Salir\n 2)Cantidad de alumnos\n 3)Mostrar alumno y promedio\n 4)crear archivo promedios\n 5)mostrar alumnos sobre 7"
op = gets.chomp.to_i

loop do
  case op
  when 1
    puts 'Adios!!'
    break
  when 2
    contador = contar_lineas
    puts "hay un total de #{contador} alumnos"
  when 3
    alumnos.each do |alumno|
      promedio = alumno.promedios
      puts "#{alumno.nombre} tiene promedio #{promedio}"
    end
  when 4
    puts write_promedios(alumnos)
  when 5
    puts aprobados(alumnos)
  else
    puts "Error: Opcion invalida!!\nIngrese una opcion valida"
  end

  puts "\nIngrese una opcion:\n 1)Salir\n 2)Cantidad de alumnos\n 3)Mostrar alumno y promedio\n 4)crear archivo promedios\n 5)mostrar alumnos sobre 7"
  op = gets.chomp.to_i
end
