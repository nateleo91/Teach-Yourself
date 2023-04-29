-- print the menu options
print("Choose a game to play:")
print("1. Guess the Number")
print("2. CPU Guess the Number")
print("3. Hangman")
print("4. Rock-Paper-Scissors")

-- read the user's choice
io.write("Enter the number of the game you want to play: ")
local choice = tonumber(io.read())

-- launch the selected game
if choice == 1 then
  dofile("number_guess.lua")
elseif choice == 2 then
  dofile("cpu_guess.lua")
elseif choice == 3 then
  dofile("Hangman.lua")
elseif choice == 4 then
  dofile("rock_paper_scissors.lua")
else
  print("Invalid choice.")
end
