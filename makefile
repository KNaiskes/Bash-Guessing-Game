README.md:
	echo "# Bash-Guessing-Game" > README.md
	echo "Make runned at: `date`" >> README.md
	echo "Lines of code: `wc -l guessinggame.sh` " >> README.md

clean:
	rm README.md
