# Luigi Lake
# 7.15.17

# Rock Paper Scissors

player = nil
while player != "r" && player != "p" && player != "s"
  print "Choose rock (r), paper (p), or scissors (s): "
  player = gets.chomp.downcase
  case player
  when "r"
    puts "Player chose ROCK!"
  when "p"
    puts "Player chose PAPER!"
  when "s"
    puts "Player chose SCISSORS"
  else
    puts "Invalid entry. Try again."
  end
end

computer = rand(3)
case computer
when 0
  puts "Computer chose ROCK!"
when 1
  puts "Computer chose PAPER!"
else
  puts "Computer chose SCISSORS!"
end

tie = (player == "r" && computer == 0) ||
      (player == "p" && computer == 1) ||
      (player == "s" && computer == 2)

player_wins = (player == "r" && computer == 2) ||
              (player == "p" && computer == 0) ||
              (player == "s" && computer == 1)

computer_wins = (computer == 0 && player == "s") ||
                (computer == 1 && player == "r") ||
                (computer == 2 && player == "p")

if tie
  puts "It's a tie!"
elsif player_wins
  puts "Player wins!"
elsif computer_wins
  puts "Computer wins!"
end
