# Usando variaveis, escreva um programa que calcula e exiba na tela:
# - quantas horas há em um ano?
# - quantos minutos há em uma década?
# - qual é a sua idade em segundos?
# - quantos chocolates você pretende comer na vida?
# - Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?
# OBS.: 02-exercicio.rb

horasAno = 24 * 365
minutosAno = horasAno * 60
segundosAno = minutosAno * 60

puts "Quantas horas há em um ano?"
puts "R: " + horasAno.to_s + " horas"
puts "" 
puts "Quantos minutos há em uma década?"
puts "R: " + (minutosAno * 10).to_s + " minutos"
puts ""
puts "Qual é a sua idade em segundos?"
puts "R: " + (segundosAno * 29).to_s + " segundos"
puts ""
puts "Quantos chocolates você pretende comer na vida?"
puts "R: " + (365 * 80).to_s + " chocolates"
puts ""
puts "Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?"
puts "R: " + (1232000000 / segundosAno).to_s + " anos"