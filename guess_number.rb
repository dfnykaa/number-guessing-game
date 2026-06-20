puts "=" * 40
puts "Welcome to the Number Guessing Game!"
puts "=" * 40
puts "I've thought of a number between 1 and 100."
puts "Try to guess it!"
puts

tajne_cislo = rand(1..100)
pocet_pokusu = 0
max_pokusu = 10

loop do
  print "Your guess (#{pocet_pokusu + 1}/#{max_pokusu}): "
  vstup = gets.chomp

  unless vstup =~ /\A\d+\z/
    puts "Please enter a valid number."
    next
  end

  tip = vstup.to_i
  pocet_pokusu += 1

  if tip < tajne_cislo
    puts "📈 Too low! Try again."
  elsif tip > tajne_cislo
    puts "📉 Too high! Try again."
  else
    puts
    puts "🎉 You guessed it! The number was #{tajne_cislo}."
    puts "It took you #{pocet_pokusu} attempts!"
    break
  end

  if pocet_pokusu >= max_pokusu
    puts
    puts "💀 You've run out of attempts."
    puts "The number was: #{tajne_cislo}"
    break
  end
end

puts
puts "Thank you for playing!"

github_url = "https://github.com/dfnykaa/number-guessing-game"
