# Ejercicio 3: Ruleta
# Se tiene un array que contiene los números de una ruleta.
# r = (1..10).to_a
# Se pide:
# Crear una clase llamada Roulette.
# Crear un método de instancia llamado play que reciba como argumento un número
# al cual se está apostando. Luego debe tomar un valor -del array- al azar y
# compararlo con el número al cual se apostó.
# Crear un método de instancia que:
# Debe almacenar el número generado al azar en un archivo llamado
# roulette_history.txt
# Si el número al cual se apostó corresponde al generado al azar entonces,
# debe además almacenar ese número en un archivo llamado winners.txt
# Crear un método que lea el archivo rouletter_history.txt y retorne el valor que más ha
# generado la ruleta históricamente.

class Roulette
  def play(num)
    sample = (1..10).to_a.sample
    results_history(num_sample)
    print num == smaple ? 'win' : 'loose'
  end
  def results_history(play, random)
    File.open('roulette_history.txt', 'r') { |f| f.puts random }
    File.open('winners.txt', 'a') { |f| f.puts play } if random == play
  end
  def Roulette

end

Roulette.new.play(2)
