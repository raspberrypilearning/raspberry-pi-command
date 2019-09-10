## Add text effects

Now let's add some text effects. You can change the colour of the text and use underlining, italic and other features. 

First you'll learn how to use colour effects by typing commands at the command line and then you'll add colour effects to your script. 

--- task ---
Open a terminal window and type the following command to output 'Welcome' in green text:

```bash
echo -e "\e[32mWelcome"
```
![Welcome text in green](images/command-green-text.png)

The '-e' tells the echo command to look for escape sequences of characters (with a backslash before them).
The '\e[ ... m' tells the echo command that the following characters should be treated as a special code.
The '32' says that the text colour should be green.

--- /task ---

--- task ---
You can use numbers from 31 to 37 to get different colours. Try it. 

Tip: Remember you can use the up arrow on the keyboard to get your previous command back and use left and right and backspace to edit the command. This means you don't have to type the whole command lots of times to try different colours. 

--- /task ---

--- task ---
Now type the message 'Hello' in orange text.

--- hints ---
--- hint ---
The following command creates green text:

```bash
echo -e "\e[32mWelcome"
```

Change the number 32 to different numbers from 31 to 37 and see which one gives you orange text.
--- /hint ---
--- hint ---
You need this command:
```bash
echo -e "\e[33mWelcome"
```
--- /hint ---

--- /hints ---
--- /task ---
