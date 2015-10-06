require 'sinatra'
require 'sinatra/reloader'

  NUMBER = rand(100)

def number
  NUMBER
end

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => number, :message => message}
end

def check_guess(guess)
  guess = guess.to_i unless guess.nil?
  guess_plus_five  = number + 5
  guess_minus_five = number - 5
  if guess.nil?
    "Need guess"
  elsif guess == 0
    "Take a guess"
  elsif guess >= guess_plus_five
    "Way too high!"
  elsif guess <= guess_minus_five
    "Way too low!"
  elsif guess > number
    "Too high!"
  elsif guess < number
    "Too low!"
  elsif guess == number
    ""
  end
end
