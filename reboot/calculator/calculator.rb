def calculator (first_number, operator, second_number)
  if operator == "+"
    result = first_number + second_number
  elsif operator == "-"
    result = first_number - second_number
  elsif operator == "x"
    result = first_number * second_number
  elsif operator == "/"
    result = first_number / second_number
  else
    result = "opératio non valide"
  end
end
