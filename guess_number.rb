puts "=" * 40
puts "Welcome to the Number Guessing Game!"
puts "=" * 40
puts "I've thought of a number between 1 and 100."
puts "Try to guess it!"
puts

secret_number = rand(1..100)
attempts = 0
max_attempts = 10

loop do
  print "Your guess (#{attempts + 1}/#{max_attempts}): "
  input = gets.chomp

  unless input =~ /\A\d+\z/
    puts "Please enter a valid number."
    next
  end

  guess = input.to_i
  attempts += 1

  if guess < secret_number
    puts "📈 Too low! Try again."
  elsif guess > secret_number
    puts "📉 Too high! Try again."
  else
    puts
    puts "🎉 You guessed it! The number was #{secret_number}."
    puts "It took you #{attempts} attempts!"
    break
  end

  if attempts >= max_attempts
    puts
    puts "💀 You've run out of attempts."
    puts "The number was: #{secret_number}"
    break
  end
end

puts
puts "Thank you for playing!"

github_url = "https://github.com/dfnyka/number_guessing_game"
