# interface.rb

# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user --) dire hello à l'utilisatteur
# 2. Ask user for the first number --) demander à l'utilisateur le premier numéro
# 3. Get user answer --) capturer la réponse de l'utilisateur
# 4. Ask user for second number demander à l'utilisateut un second numéro
# 5. get user answer ---) capturer la réponse de l'utilisateur
# 6. Ask user for inspection ---) demander à l'utilisateur l'opération qu'il souhaite faire
# 7. calculer l'opération ---) calculer l'orpération
# 8. print the result ---) imprimer le résultat

require_relative "calculator"

exit_question = ""

puts "hello"

while exit_question != "exit" do
  puts "Enter a first number"
  first_number = gets.chomp.to_i
  puts "Enter a second number"
  second_number = gets.chomp.to_i
  puts "Quelle opération voulez-vous faire [+] [–] [x] [/]?"
  operator = gets.chomp

  result = calculator(first_number, operator, second_number)

  puts "Le resultat est #{result}"
  puts "Start or exit?"
  exit_question = gets.chomp
end









