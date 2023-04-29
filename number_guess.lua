math.randomseed(os.time()) -- seed the random number generator

local playAgain = true

while playAgain do
  -- generate a random number between 1 and 100
  local number = math.random(1, 100)

  -- loop until the user guesses the number
  while true do
    -- ask the user to guess the number
    io.write("Guess a number between 1 and 100: ")
    local guess = tonumber(io.read())

    -- check if the user's guess is correct
    if guess == number then
      print("Congratulations! You guessed the number.")
      break -- exit the inner loop
    elseif guess < number then
      print("Too low. Guess again.")
    else
      print("Too high. Guess again.")
    end
  end

  -- ask the user if they want to play again
  io.write("Do you want to play again? (y/n): ")
  local answer = io.read()

  if answer:lower() ~= "y" then
    playAgain = false
  end
end

-- return to game chooser
dofile("game_choose.lua")
