## Add text effects

Now, you will add some text effects. You can change the colour of the text and use underlining, italics, and other features. 

First, you will learn how to use colour effects by typing commands in the command line, and then, you will add colour effects to your script. 

--- task ---
Open a terminal window and type the following command to output `Welcome` in green text:

```bash
echo -e "\e[32mWelcome"
```
![Welcome text in green](images/command-green-text.png)

--- /task ---

The `-e` tells the `echo` command to look for escape sequences with a backslash before them. These are sequences of characters that have a special meaning; for example, `\n` means 'print a new line'.
The `\e[ ... m` tells the `echo` command that the following characters should be treated as a special code.
The `32` says that the text colour should be green.

--- task ---
You can use numbers from `31` to `37` to get different colours. Try it. 

--- /task ---

**Tip:** Remember that you can use the <kbd>Up</kbd> arrow on the keyboard to get your previous command back, and use <kbd>Left</kbd> and <kbd>Right</kbd> and <kbd>Backspace</kbd> to edit the command. This means that you don't have to type the whole command lots of times to try different colours. 

--- task ---
Now type the message `Hello` in orange text.

--- hints ---
--- hint ---
The following command creates green text:

```bash
echo -e "\e[32mWelcome"
```

Change the number `32` to different numbers from `31` to `37` and see which one gives you orange text.
--- /hint ---
--- hint ---
You need this command:
```bash
echo -e "\e[33mWelcome"
```
--- /hint ---

--- /hints ---
--- /task ---


--- task ---

The codes apply to all text after them. You can use another code to set a different colour. 

Type this command to try it:

```bash
echo -e "\e[33mHello \e[35mWorld"
```

--- /task ---

--- task ---
You can also use the number `1` for bold/bright text.

```bash
echo -e "\e[1;33mHello \e[35mWorld"
```

For some colours, the brighter version is a different colour; for example, orange becomes yellow. 

--- /task ---

--- task ---

If you want to use regular text after bold or another effect, then you can use the code `0`. 

What is the difference between the output of these two commands?

```bash
echo -e "\e[1;33mHello \e[35mWorld"
```

and

```bash
echo -e "\e[1;33mHello \e[0;35mWorld"
```


--- collapse ---
---
title: Answer
---

In the second command, the word "World" uses regular-weight font, whereas in the first command, the bold setting is still turned on.

--- /collapse ---

--- /task ---

--- task ---
If you want to reset the effects back to default, you can use `\e[0m`:

```bash
echo -e "Default \e[31mRed \e[0mDefault"
```

--- /task ---

--- task ---
Now, go back to Geany and edit your script so that the output looks like this (but with your hostname and day of the week): 

![coloured welcome message](images/command-welcome-coloured.png)

--- hints ---
--- hint ---
You will need to add `-e` to your `echo` commands and escape sequences beginning with `\e[` and ending with `m` before the text that you want to add effects to.
--- /hint ---
--- hint ---
The first `echo` command needs to use normal and bold orange (yellow). The second `echo` command needs to use normal and bold magenta.
--- /hint ---
--- hint ---
You will need the following escape codes: `e[33m`, `e[1;33m`, `e[0;35m`, and `e[1;35m`.
--- /hint ---
--- hint ---
The `echo` lines in your script should look like this:

```bash
echo -e "\e[33mWelcome to \e[1;33m$HOSTNAME"
echo -e "\e[0;35mIt's \e[1;35m$(date +%A)"
```

--- /hint ---

--- /hints ---
--- /task ---


