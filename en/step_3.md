## Create your own command

You have used the `echo` and `date` commands. You can also write your own commands by combining commands such as these in a file. You will use the Geany Programmer's Editor to create your command (also called a script.) This is useful when you want to write longer or more complex commands. 

--- task ---
You can start the Geany editor from the command line. Type the following command:

```bash
geany welcome.sh &
```
Giving the file the extension '.sh' tells Geany that you'll be writing a shell script. This means that Geany can highlight the text in different colours and knows how to run your script.

The ampersand (&) on the end of the line says that you want to be able to type more commands while Geany is still running. We say that Geny is running in the background. 

Tip: You can also open Geany by clicking the Raspberry in the top left of the screen to open the Main Menu and select Programming and then Geany Programmer's Editor. 

![Open Geany](images/command_geany.png)

--- /task ---

--- task ---
Add the following lines to your script:

```bash
#!/bin/bash
echo "It's $(date +%A)"
```

--- /task ---

--- task ---

Press 'F5' or click the Run (paper aeroplane) button to run your command. Your file will automatically be saved.

A Terminal window will pop up and try and run your command. It will fail with the error 'Permission denied'.

![Permission denied](images/command_denied.png)

Press return to close this window.

--- /task ---

--- task ---
Return to the terminal window where you have been entering commands (or open a new one from the Taskbar icon if you closed it.)

Type this command to see the properties of `welcome.sh`

```bash
ls -l welcome.sh
```

You should see that the file has the permissions: `-rw-r--r--`.

There are three possible permissions: read, write and execute and these can be set for the user (you), group and other (everyone.)

The user is able to read and write to this file but not execute it. 

--- /task ---

--- task ---
To add execute permission for the user, type this command:

```bash
chmod u+x welcome.sh
```
This gives you, the *u*ser, permission to run (e*x*ecute) this file as a command. 

`chmod` is short for change mode. 


--- /task ---

--- task ---
Repeat the command to see the properties of `welcome.sh`

```bash
ls -l welcome.sh
```
--- /task ---

