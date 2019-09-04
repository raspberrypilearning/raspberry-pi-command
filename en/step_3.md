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

--- task ---
Tip: You can use the up arrow on your keyboard to reuse existing commands (and edit them.)

Now you should see that the user has execute permission. 

```bash
-rwxr--r--
```

You don't need to worry about permissions for other users as you will be the only one running this script in this project. 

--- task ---
Now return to the Geany editor and press 'F5' or the Run button again. This time you should see a terminal window with the output of your program. 

![Welcome output](images/command_output.png)

--- /task ---

--- task ---
Now it's easy to add more lines to your script. 

Add another line to the end of your script:

```bash
echo "Welcome to $HOSTNAME" 
```

Your script can use enviroment variables such as $HOSTNAME to access information. 

$HOSTNAME contains the name of your Raspberry Pi computer on the network.

--- /task ---

--- task ---
You can change the hostname of your Raspberry Pi by opening the Main Menu and choosing 'Preferences' then 'Raspberry Pi Configuration'. 

Give your Raspberry Pi computer a name of your choice. 

![Welcome output](images/command_output.png)

--- /task ---

--- task ---
For this change to take effect you will need to reboot your computer. 

First close all the windows you have open by clicking the 'x' in the top-right corner. 

Then open the Main Menu and choose Shutdown then Reboot. 
--- /task ---

--- task ---
Log back in to your Raspberry Pi. 

Open the Geany editor ('Main Menu' then 'Programming). 

It should open the file you were working on. Or you can choose 'File' then 'Open' and choose 'welcome.sh'

--- /task ---

--- task ---
Now run your script again and you should see the new hostname. 

--- /task ---
