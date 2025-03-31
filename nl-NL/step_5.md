## Uitdaging: pas je commando aan

Je hebt `0` gebruikt voor gekleurde tekst en `1` voor vetgedrukte tekst.

Je kunt ook gebruiken:

- `2` voor donkere/vage tekst
- `3` voor cursieve tekst
- `4` voor onderstreepte tekst
- `5` voor knipperende tekst
- `7` voor omgekeerde video (achtergrond- en voorgrondkleuren omwisselen)
- `9` voor doorgestreepte tekst

Dit commando combineert ze om vetgedrukte, onderstreepte, rode tekst te maken:

```bash
echo -e "\e[1;3;4;31mHallo"
```

--- task ---

Maak je eigen kleurrijke 'welkom' commando.

Je kunt een mooie, leuke quote toevoegen of de opdracht `date` gebruiken om de tijd weer te geven.

--- /task ---

