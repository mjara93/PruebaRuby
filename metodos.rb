# metodo read
def read_alumnos
  file = File.open('alumnos.csv', 'r')
  content = file.readlines
  file.close
  line = content.map { |e| e.delete(",\n") }
  line
end

# metodo para ecribir archivo promedios.txt
def write_promedios(arr = [])
  file = File.open('promedios.txt', 'w')
  arr.each do |alumno|
    file.puts "#{alumno.nombre}, #{alumno.promedios}, #{alumno.inasistencias} inasistencias"
  end
  file.close
  'Archivo creado con exito!'
end

# lee el archivo, crea un arreglo de objetos
def asignador
  alum = []
  line = read_alumnos
  line.each do |alumno|
    contador = 0
    arr = alumno.split(' ')
    arr.each do |x|
      contador += 1 if x == 'A'
    end
    alum << Alumnos.new(arr[0], arr[1], arr[2], arr[3], contador)
  end
  alum
end

# metodos que retorna total de alumnos en el archivo alumnos.csv
def contar_lineas
  line = read_alumnos
  contador = line.count
  contador
end

# retorna nombre de alumnos aprobados con su promedio final
def aprobados(arr = [])
  aprobados = ''
  arr.each do |alumno|
    if alumno.promedios > 7
      aprobados += "#{alumno.nombre} aprueba con nota #{alumno.promedios}\n"
    end
  end
  aprobados
end
