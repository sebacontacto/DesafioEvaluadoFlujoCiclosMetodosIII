# Requerimiento 2, solicitan un programa que simule el juego de “Adivina el número”.
# En este programa el computador va a elegir un número aleatorio y el usuario al
# seleccionar un número debe indicarle si ganó o perdió. La condición para ganar es
# que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego.
# Requerimiento 2,
# Utiliza el método .rand para generar números aleatorios.
# Implementa el ciclo más conveniente para lograr la lógica del ejercicio.

# Pedir a jugador humano cantidad de intentos para adivinar
puts ("¿Cuantos intentos quieres tener para adivinar?")
intentos = gets.chomp.to_i

# Generar numero aleatorio de la maquina, entre 1 y el numero de intentos ingresado. Por ejemplo si se ingresaron diez intentos, el rango es de 1 a 10.
puts num_aleat_maquina = rand(1...intentos + 1)

i = 1
while i <= intentos do # Ciclo while para controlar la cantidad de veces que se pregunta adivinar al usuario
  puts ("Intento numero #{i}, adivina que numero escogio la maquina:")
  num_adivinado = gets.chomp.to_i
  if num_aleat_maquina == num_adivinado #Ciclo if para controlar si se ha adivinado el numero que escogio la maquina
    puts ("¡Ganaste! En el intento numero #{i}")
    i = intentos
  else
    puts ("Perdiste. Te quedan #{intentos - i} intento(s)")
  end
  
  i += 1
end
  