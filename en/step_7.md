## More colours

Some terminals, including the default Raspbian one, allow you to use even more colours. 

--- task ---
You can choose from 256 different colours numbered from 0 (black) to 255 (white).

Try the following command:

```bash
echo -e "\e[38;5;99mPurple"
```
The '38;5' park of the code says that you want to use an extended colour for the foreground text. The number 99 corresponds to a shade of purple. 

Try some other numbers from 0 to 255. 

--- /task ---

--- task ---
The bash language allows you to write complex scripts. 

Open a new Geany file called 'bash-colours.sh'. 

Look back at the 'Create a command' step if you need a reminder.

--- /task ---

--- task ---

Make your script executable. 

Look back at the 'Create a command' step if you need a reminder.

--- /task ---

--- task ---
Let's use a `for` loop to print out all the colours. 

Add the following to your 'bash-colours.sh' script.

```bash
#!/bin/bash
for i in {0...255} ; do echo -en "\e[38;5;${i}m ${i} \e[0m" ; done ; echo
```

The loop runs the echo command once for each colour in the range 0 to 255.

The `-n` option to echo says **not** to output a newline after each command.

The final echo outputs a newline so that the command prompt appears on the left. (You can try the command without the final echo if you like.)

--- /task ---

--- task ---
Test your script using F5 or by running it from the command line.

--- /task ---

--- task ---
If you use '48;5' instead of '38;5' then you can change the background colour instead of the foreground colour. Change your script to show the full range of background colours. 

--- hints ---
--- hint ---
Edit your command so that it looks like this:

```bash
for i in {0...255} ; do echo -en "\e[48;5;${i}m ${i} \e[0m" ; done ; echo
```

The only change is that it uses 48 instead of 38.
--- /hint ---
--- /hints ---

--- /task ---

--- task ---
Now add your command to the `Accessories` section of the Main Menu. 

Look back at the previous step if you need help.

Remember you will need to make sure that your command reads a character before exitting. 
--- /task ---

