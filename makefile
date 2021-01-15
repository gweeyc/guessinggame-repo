all: README.md

README.md: guessinggame.sh 
	touch README.md
	echo "Date and Time at which make was run:" > README.md
	date >> README.md 
	echo "" >> README.md
	echo "The title of the project:" >> README.md
	echo "Bash Guessing Game (no. of files in current directory)" >> README.md
	echo "" >> README.md
	echo "Total lines of code in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "^[0-9]+" >> README.md



