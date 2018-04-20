# Ejercicio 2: Objetos y archivos.
# El archivo cursos.txt contiene las fechas de inicio y termino de cursos
# dictados por Desafio Latam durante el año 2017, con la siguiente estructura:

# Se pide:
# Crear una clase Course cuyo constructor reciba el nombre y las fechas de
# inicio y termino de cada curso.
# Crear un metodo que permita leer el archivo e instanciar un curso por linea
# del archivo.
# Crear metodos que permitan:
# Saber que cursos comienzan previo a una fecha entregada como
# argumento.
# Saber que cursos finalizan posterior a una fecha entregada como
# argumento.
# En ambos el metodos argumento por defecto debe ser la fecha
# de hoy.
# Ambos metodos deben levantar una excepcion si la fecha
# recibida es >= 2018-01-01.
require 'date'
class Course
  attr_accessor :inidate, :endate
  def initialize(inidate, endate)
    @inidate = inidate
    @endate = endate.map { |date| Date.parse(date) }
  end
  def begin_before(fecha = date.today)
    raise ArgumentError.new('Solo fechas dentro de 2017') if Date >= 2018-01-01.
    @inidate.select { |date| date < fecha }
  end
  def begin_after(fecha = date.today)
    raise ArgumentError.new('Solo fechas dentro de 2017') if Date >= 2018-01-01.
    @endate.select { |date| date > fecha(date.today) }
  end
end
