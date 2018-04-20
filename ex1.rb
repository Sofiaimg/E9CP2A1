# Ejercicio 1: Objetos y archivos.
# El archivo casino.txt contiene las recaudaciones de 4 dias de un casino
# separadas por mesa de juego.
# Se pide:
# Crear una clase Table cuyo constructor reciba el nombre de la mesa y las
# recaudaciones correspondientes de cada día.
# Crear un método que permita leer el archivo e instanciar una mesa por línea del
# archivo.
# Crear métodos que permitan:
# Conocer el mayor valor recaudado, y a que mesa y día corresponde.
# Calcular el promedio total de lo recaudado por todas las mesas en todos los
# días.

class Table
  attr_accessor :name, :profit
  def initialize(name, *profit)
    @name = name
    @profit = profit.map(&:to_i)
  end
  def self_create_tables
#tables =[]
#file = File.open('casino.txt', 'r')
#lines = file.readlines
#file.close
#lines.each do |line|
#ls = line.split(' ')
#tables << Table.new(ls.shift, *ls)
    file = File.open('casino.txt', 'r')
    lines = file.readlines
    file.close

    tables = []
    lines.each do |line|
      ls = line.split(' ')
      tables << Table.new(ls.shift, *ls)
    end
    tables
  end


  def Table.max_profit
  tables = Table.create_tables
  best_tables = {}
  tables.each_with_index do |table, day|
    best_tables[table.name] = [table.profit.max, day+1]
  end
  print best_tables.max_by{|k, v| v[0]}
  end

  def Table.profit_avarage
 tables = create_tables
 results = []
 tables.each do |table|
 results << table.profit
 end
    results.flatten!.inject(&:+) / results.size.to_f
end
end

print Table.max.profit
print Table.profit_average
