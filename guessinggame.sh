guessinggame.sh
#!/bin/bash

# Function to play the guessing game
play_game() {
    local num_files=$(ls -1 | wc -l) # Count the number of files
    local guess=0

    echo "How many files are in the current directory?"

    while [ $guess -ne $num_files ]; do
        read -p "Please enter your guess: " guess
        
        if [ $guess -lt $num_files ]; then
            echo "Your guess is too low. Try again!"
        elif [ $guess -gt $num_files ]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed it right!"
        fi
    done
}

# Start the game
play_game
