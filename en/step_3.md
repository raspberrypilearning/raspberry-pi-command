## Create your own command

You can write a script of commands by combining commands such as `echo` and `date` in a file. 

You will use the Geany Programmer's Editor to write a script. 

A script is useful when you want to use longer sequences of commands.

--- task ---

Start the Geany editor from the command line. 

```bash
geany welcome.sh &
```
This creates a new file named `welcome`. 

The extension `.sh` tells Geany that it is a shell script, so Geany can highlight the text in different colours, and knows how to run your script.

The ampersand `&` at the end of the line says that you want to be able to type more commands while Geany is still running ("running in the background"). 

![Geany window](images/Geany.png)

**Note**: You can also open Geany from the main menu. 

--- /task ---

--- task ---

Add these lines to your script:

```bash
#!/bin/bash
echo "It's $(date +%A)"
```

The first line is used to run the script using the Bash language. 

--- /task ---

--- task ---

Press <kbd>F5</kbd> or click the **Run** (paper aeroplane) button to run your command. Your file will be saved automatically.

A terminal window will open. Your script will run and fail with the error `Permission denied`. This means that you don't have permission to run your script as a command. 

![Permission denied](images/command-denied.png)

Press <kbd>Return</kbd> (<kbd>Enter</kbd>) to close this window.

--- /task ---

You need to set your script to be executable so Raspberry Pi OS can run it as a command.

--- task ---

Return to the terminal window in which you have been entering commands (or if you have closed it, open a new one from the taskbar icon).

Type this command to see the properties of `welcome.sh`:

```bash
ls -l welcome.sh
```

You should see that the file has the permissions `-rw-r--r--`.

--- /task ---

There are three possible permissions: 'read', 'write', and 'execute'. These can be set for the 'user' (you), 'group', and 'other' (everyone).

The user is able to read and write to this file, but not execute it. 

--- task ---

Add execute permission for the user.

```bash
chmod u+x welcome.sh
```
This gives you, the `u`ser, permission to run (e`x`ecute) this file as a command. 

`chmod` is short for 'change mode'. 

--- /task ---

--- task ---

Repeat the `ls -l` command to see the properties of `welcome.sh`:

```bash
ls -l welcome.sh
```

--- /task ---

--- task ---

**Tip:** You can use the <kbd>Up</kbd> arrow on your keyboard to reuse existing commands (and edit them).

Now, you should see that the user has e`x`ecute permission. 

```bash
-rwxr--r--
```

--- /task ---

You don't need to consider permissions for other users, as you will be the only one running this script in this project. 

--- task ---

Return to the Geany editor and press <kbd>F5</kbd> or the **Run** button again. 

This time, you should see a terminal window with the output of your program. 

![Welcome output](images/command-output.png)

--- /task ---

It's easy to add more lines to your script. 

--- task ---

Add another line to the **beginning** of your script, after the line `#!/bin/bash`:

```bash
echo "Welcome to $HOSTNAME" 
```

A script can use environment variables such as `$HOSTNAME` to access information. 

`$HOSTNAME` contains the name of your Raspberry Pi computer on the network.

--- /task ---

Another useful Bash command is `sleep`.

--- task ---

Add a `sleep` command in between the `echo` commands in your script to create a one second delay. 

```bash
#!/bin/bash
echo "It's $(date +%A)"
sleep 1
echo "Welcome to $HOSTNAME"
```

--- /task ---

--- task ---

Press <kbd>F5</kbd> or click the **Run** (paper aeroplane) button to run your command.

--- /task ---