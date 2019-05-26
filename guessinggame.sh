#!usr/bin/env bash
# File: guessinggame.sh

echo ""
echo "Welcome to the Guessing Game! Written by Ben Bracey"
echo "Guess how many files are in the current directory: "

answer=$(ls | wc -l)

# required function
function guessfunc {
  read guess

  # required IF condition
  if [ $guess -lt $answer ]
  then
    echo "Too low! Try a bit higher: "
    guessfunc
  elif [ $guess -gt $answer ]
  then
    echo "Too high! Try a bit lower: "
    guessfunc
  elif [ $guess -eq $answer ]
  then
    finishfunc
  else
    echo " You should never get here.. unless guess: $guess is not an integer"
  fi
}

function finishfunc {
  echo "Congratulations, that is Correct! There are $answer files in the current directory. "
  echo "Below is the list of files: "
  echo ""

  # required loop
  for ((i=1; i<=$answer; i++)); 
  do
    echo "file $i is $(ls | head -$i | tail -1) "
  done
  echo ""
}

guessfunc
