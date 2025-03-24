## Challenge: customise your command

You have used `0` for coloured text and `1` for bold text.

You can also use:

- `2` for dark/faint text
- `3` for italic text
- `4` for underlined text
- `5` for blinking text
- `7` for reverse video (swap background and foreground colours)
- `9` for crossed-out text

This command combines them to create bold underlined red text:

```bash
echo -e "\e[1;3;4;31mHello"
```

\--- task ---

Create your own colourful 'welcome' command.

You could include an inspirational quote or use the `date` command to show the time.

\--- /task ---

