# Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.
# datos para las subcategorías asociadas a la obesidad.
# Obesidad grado I: 30 - 34.9 - Moderado
# Obesidad grado II: 35 - 39.9 - Severo
# Obesidad grado III: Más de 40 - Muy severo

# Metodo para calcular imc, considera dos parametros: peso y altura
def formula_imc(peso, altura)
  imc = peso / (altura**2)
  return imc
end

# Metodo para asignar rango al imc, recibe como parametro imc calculado, retorna
# mensajes al usuario segun el valor del imc
def rango_imc(imc)
  puts ("Tu índice de masa corporal es => #{imc}")
  if imc < 18.5
    puts ("El índice calculado es Bajo de peso")
  elsif imc >= 18.5 && imc <= 24.9
    puts ("El índice calculado es Normal")
  elsif imc >= 25.0 && imc <= 29.9
    puts ("El índice calculado es Sobrepeso")
  else
    puts ("El índice calculado es Obesidad")
    if imc >= 30.0 && imc <= 34.9
      puts ("Obesidad grado I - Moderado")
    elsif imc >= 35.0 && imc <= 39.9
      puts ("Obesidad grado II - Severo")
    elsif imc >= 40.0
      puts ("Obesidad grado III - Muy severo")
    end
  end
end

# Ingreso de datos del usuario y considerarlos float
puts ("Ingresa tu peso en Kilogramos:")
peso = gets.chomp.to_f

puts ("Ingresa tu altura expresada en metros:")
altura = gets.chomp.to_f

# Llamado al metodo formula_imc(), el retorno de dicho metodo es imc con lo cual se llama al metodo rango_imc() para obtener el mensaje a entregar al usuario y guardarlo en la variable resultado
resultado = rango_imc(formula_imc(peso, altura))

# Muestra mensaje al usuario
puts (resultado)