function play_game()
    -- ask the user to think of a number
    print("Think of a number between 1 and 100.")
  
    -- initialize the search range
    local low = 1
    local high = 100
  
    -- loop until the CPU guesses the number
    while true do
      -- guess the middle of the search range
      local guess = math.floor((low + high) / 2)
      print("Is your number " .. guess .. "?")
  
      -- ask the user for feedback
      io.write("Enter 'l' if your number is lower, 'h' if your number is higher, or 'c' if I guessed correctly: ")
      local feedback = io.read()
  
      -- adjust the search range based on the user's feedback
      if feedback == "c" then
        print("I guessed your number! Thanks for playing.")
        return true -- exit the function and indicate success
      elseif feedback == "l" then
        high = guess - 1
      elseif feedback == "h" then
        low = guess + 1
      else
        print("Invalid input. Please enter 'l', 'h', or 'c'.")
      end
    end
  end
  
  repeat
    play_game()
    io.write("Do you want to play again? (y/n): ")
  until io.read() ~= "y"
  
  -- return to game_choose.lua
  dofile("game_choose.lua")
  