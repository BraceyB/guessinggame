# File: makefile


all: create_readme

create_readme:
	touch README.md
	echo "" > README.md
	echo "# Guessing Game - written by **Ben Bracey** " >> README.md
	echo "  Created at:	$$(date) " >> README.md	
	echo "  Number of lines in guessinggame.sh: $$( cat guessinggame.sh | wc -l )" >> README.md


clean:
	rm README.md
	
