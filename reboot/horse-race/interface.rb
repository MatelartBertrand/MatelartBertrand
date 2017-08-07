horses_name = ["toto", "tata", "titi", "tonton", "tutu"]
result_race = ""
exit_question = ""

puts "welcome dud!"

while exit_question != "no" do
  puts "Chose your horse!"
  horses_name.each do |horse|
    puts "--) " + horse
  end
  horse = gets.chomp.downcase
  puts "The horses are currently running. Waiting for the end of the race"
  5.times do
    sleep(1)
    puts "tagada"
  end
  result_race = horses_name.sample
  if result_race == horse
    puts "You win! The horse #{result_race} win!!!!!! Try and win again? [yes][no]"
  elsif
    puts "You lose... The winner horse is #{result_race}... Try again! [yes][no]"
  end
  exit_question = gets.chomp.downcase
end

