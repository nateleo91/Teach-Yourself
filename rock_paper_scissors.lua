-- define the options
local options = { "rock", "paper", "scissors" }

-- define function to check if user wants to play again
local function playAgain()
  io.write("Do you want to play again? (y/n): ")
  local answer = io.read():lower()
  if answer == "y" then
    return true
  else
    return false
  end
end

-- loop until user chooses to exit
while true do
  -- initialize the result to "tie" to enter the loop
  local result = "tie"

  while result == "tie" do
    -- ask the user to choose an option
    print("Choose your option (rock, paper, or scissors):")
    local userOption = io.read():lower()

    -- generate a random option for the CPU
    math.randomseed(os.time())
    local cpuOption = options[math.random(#options)]

    -- print the CPU's option
    print("The CPU chose " .. cpuOption .. ".")

    -- determine the winner
    if userOption == cpuOption then
      print("It's a tie! Let's keep going.")
    elseif userOption == "rock" and cpuOption == "scissors"
        or userOption == "paper" and cpuOption == "rock"
        or userOption == "scissors" and cpuOption == "paper" then
      result = "win"
    else
      result = "lose"
    end
  end

  -- print the final result
  print("You " .. result .. "!")

  -- ask if the user wants to play again or exit
  if not playAgain() then
    break
  end
end
