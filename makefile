README.md: guessinggame.sh
	echo -n "## The Unix Workbench : Bash, Make, Git, and GitHub\n" > README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo "\n**Description**: _guessinggame.sh_ bash script continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is high or low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
