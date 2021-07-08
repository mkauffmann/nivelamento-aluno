# Exercicio 01:
# Escreva um programa que calcula e exiba na tela:
# - quantas horas há em um ano?
# - quantos minutos há em uma década?
# - qual é a sua idade em segundos?
# - quantos chocolates você pretende comer na vida?
# Desafio:
# - Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?

puts "Quantas horas há em um ano?"
puts "R: " + (24 * 365).to_s + " horas"
puts "" 
puts "Quantos minutos há em uma década?"
puts "R: " + (60 * 24 * 365 * 10).to_s + " minutos"
puts ""
puts "Qual é a sua idade em segundos?"
puts "R: " + (60 * 60 * 24 * 365 * 29).to_s + " segundos"
puts ""
puts "Quantos chocolates você pretende comer na vida?"
puts "R: " + (365 * 80).to_s + " chocolates"
puts ""
puts "Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?"
puts "R: " + (1232000000 / 60 / 60 / 24 / 365).to_s + " anos"