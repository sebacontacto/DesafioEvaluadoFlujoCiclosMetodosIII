# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo  # aumento establecido.
# Requerimiento 1, fórmula salario + (salario * (incremento / 1000))

# Diremos que el porcentaje minmimo de aumento es de 5%
porcj_incremento = 0.05

# Metodo tiene como parametros el salario actual y el porcentaje minimo
# establecido. Realiza la operacion matematica para calcular el reajuste y lo devuelve en una variable.
def ajuste_salario(salario_actual, porcj_incremento)
  nuevo_salario = salario_actual + (salario_actual * (porcj_incremento / 1000))
return nuevo_salario.to_f
end

# Solicita ingresar el valor numerico del salario actual
puts ("Ingrese salario actual:")
salario_actual = gets.chomp.to_f

# Muestra el salario reajustado llamando al metodo que reajusta salario. Los argumentos que se le emtregan al metodo son el salario ingresado y el porcentaje de incremento  previamente definido
puts ("Salario reajustado segun porcentaje minimo de aumento: #{ajuste_salario(salario_actual, porcj_incremento)}")