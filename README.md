# Number Guessing Game

A small command-line game written in Ruby. The program picks a random number between 1 and 100, and the player has ten attempts to find it.

## How it works

The game generates a random number and asks for a guess. After each guess it tells you whether the number is higher or lower, and counts down your remaining attempts. The game ends either when you guess correctly or when you run out of attempts, at which point the number is revealed.

## Requirements

Ruby 2.7 or newer. To check whether it's already installed, run:

```
ruby -v
```

### Installing Ruby

**Windows**
Download RubyInstaller from rubyinstaller.org/downloads and choose the Ruby+Devkit build. During setup, make sure "Add Ruby executables to your PATH" is checked. Restart your terminal afterwards so the PATH change takes effect.

**macOS**
Ruby usually comes preinstalled. If you need a newer version:
```
brew install ruby
```

**Linux**
```
sudo apt install ruby
```

## Running the game

```
ruby guess_number.rb
```

## Example session

```
Your guess (1/10): 50
📉 Too high! Try again.
Your guess (2/10): 25
📈 Too low! Try again.
Your guess (3/10): 37

🎉 You guessed it! The number was 37.
It took you 3 attempts!
```

## Files

- `guess_number.rb` – game source code
- `README.md` – this file
