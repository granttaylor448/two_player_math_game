require "./players"
require "./question"

a = Question.new("Question?")
player1 = Player.new("Player 1", 3)
player2 = Player.new("Player 2", 3)
counter = 0
puts "Welcome Player 1 and Player 2. Are you ready to play a game? Type yes when you are ready"
answer = gets.chomp
if (answer == "yes")
  while (player1.lives > 0 && player2.lives > 0)
    if (counter % 2 == 0) 
      player = player1
    else
      player = player2
    end
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    puts "---- Question #{counter + 1} ----"
    puts "Here is your question #{player.name}"
    a.new_question
    counter +=1
    player_input = gets.chomp
    
    correct_answer =  a.instance_variable_get(:@answer)

    if (correct_answer.to_i == player_input.to_i)

      puts "correct"
    else 
      player.lose_life(player.lives)
      if (player.lives == 1)
        puts "Wrong answer! #{player.name} is on their LAST life"
      else
        puts "Wrong answer! #{player.name} now has #{player.lives} lives remaining"
      end
    end
  end
  puts "Game over! #{player.name} lost the game!"
  if (player1.lives != 0)
    puts "Player 1 is the winner!"
  end
  if (player2.lives != 0)
    puts "Player 2 is the winner!"
  end

 
else 
  puts "Fine then, don't play"
end



