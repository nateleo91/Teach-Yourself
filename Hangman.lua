-- define a function to ask the user if they want to play again
local function askToPlayAgain()
    io.write("Do you want to play again? (y/n): ")
    local answer = io.read():lower()
    if answer == "y" then
      return true
    else
      return false
    end
  end
  
  -- define the list of words
  local words = { "apple", "banana", "cherry", "orange", "pear" }
  
  -- loop until the user chooses to quit
  while true do
    -- randomly select a word from the list
    math.randomseed(os.time())
    local word = words[math.random(#words)]
  
    -- initialize the display string
    local display = ""
    for i = 1, #word do
      display = display .. "_ "
    end
    print(display)
  
    -- initialize the list of guessed letters
    local guessedLetters = {}
  
    -- initialize the number of remaining guesses
    local remainingGuesses = 6
  
    -- loop until the player wins or loses
    while remainingGuesses > 0 and display:find("_") do
      -- ask the player to guess a letter
      io.write("Guess a letter: ")
      local guess = io.read():lower()
  
      -- check if the letter has already been guessed
      if guessedLetters[guess] then
        print("You already guessed that letter.")
      else
        -- add the letter to the list of guessed letters
        guessedLetters[guess] = true
  
        -- check if the letter is in the word
        local found = false
        for i = 1, #word do
          if word:sub(i, i) == guess then
            display = display:sub(1, (i-1)*2) .. guess .. " " .. display:sub(i*2+1)
            found = true
          end
        end
  
        -- print the updated display
        print(display)
  
        -- decrement the number of remaining guesses if the letter was not found
        if not found then
          remainingGuesses = remainingGuesses - 1
          print("Incorrect. You have " .. remainingGuesses .. " guesses remaining.")
        end
      end
    end
  
    -- print the final result
    if remainingGuesses == 0 then
      print("You ran out of guesses. The word was " .. word .. ".")
    else
      print("Congratulations! You guessed the word.")
    end
    
    -- ask the user if they want to play again or return to game_choose.lua
    if askToPlayAgain() then
      -- continue playing the game
      print("Let's play again!")
    else
      -- return to game_choose.lua
      print("Thanks for playing!")
      break
    end
  end
  