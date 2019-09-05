## Add an icon for your command 

Did you notice that you get a default aeroplane icon for your scripts in the menu and on the desktop? Let's create a custom icon for the 'bash-colors.sh' script. 

A good icon gives you a clear idea of what the script is or what it will do. You could draw your own icon, but we're going to use thumbnail of the output of the command as an icon.

--- task ---
Have you ever tried taking a screenshot on the Raspberry Pi? It's really easy. Just tap the 'PRT SCR' key on your keyboard and a new image file will be created in your home directory. 

Now choose 'Graphics' the 'Image Viewer' from the Main Menu. You should see your image. If you have other images in your home directory then you can click the right arrow until you find the screenshot you just took.
--- /task ---

--- task ---
When you press the 'PRT SCR' key, it runs a command called 'scrot' (short for **scr**een sh**ot**).

Try running 'scrot' from the command line. 

```bash
scrot
```

Then run the 'ls' (list files) command to see the new file. 

--- /task ---

--- task ---
You can also take a screenshot of a single window.

Use 'scrot' with the -s command and then click on the window containing the output of your command.

```bash
scrot -s
```
--- /task ---

--- task ---
You can also specify a filename for the image:

```bash
scrot bash-colours.jpg -s
```
--- /task ---

--- task ---

The image file created by scrot is quite large. We can also get it to create a thumbnail image that is 10% of the size. 

```bash
scrot bash-colours.jpg -t 10 -s
```

Running this command will also create another image file called bash-colours-thumb.jpg which is a better size to use as an icon.

--- /task ---

The output of the command has a lot of detail in it so it won't make a very good icon. 

If we make the font size much bigger then we can create a much clearer icon. 

--- task ---
Go the the terminal window where you have the output of your command. 

Choose 'Edit' from the menu and then 'Preferences', change the terminal font to a much bigger number such 80 or even 120. 

The font will change on all of your terminal windows. Don't worry you'll set it back to something sensible soon.

Now resize the terminal so that it's roughly square and use the scroll bar to scroll to the beginning of the command output. 

It should look like this:


--- /task ---

--- task ---
Switch to the other terminal window and rerun the `scrot bash-colours.jpg -t 10 -s` command, you can just use the up arrow and then tap enter. 

Click on the window containing the output of your command. 
--- /task ---


--- task ---
Now click on 'Edit' and 'Prefences' on any terminal window and change the font size back to something usable such as 12. 

--- /task ---

--- task ---
Open the Main Menu Editor (from Preferences on the Main Menu). 

Select 'Bash Colours' then click on 'Properties'.

Click on the image icon and select your Home directory then choose 'bash-colours-thumb.jpg' and click OK.

--- /task ---

--- task ---
Look at the Accessories main menu entry to see your new icon. 

The new icon will also be used if you create a desktop shortcut for the command.

--- /task ---




