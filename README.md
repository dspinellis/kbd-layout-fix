# Auto-correct text entered with the wrong keyboard layout
To enter text in some languages you press a special key
combination (e.g. Alt-Shift) to toggle the keyboard layout.
The keyboard layout context is typically kept separately for each window.
This is generally good, but forces you to remember (or check) the
current layout every time you switch to another window.
If you forget to do that, the text you type will come out as gibberish.
The AutoHotKey script provided here will automatically fix such text.

For example, if you have written *Ιτ ςασ α δαρκ ανδ στορμυ νιγητ* it will replace it with
*It was a dark and stormy night*.
If you have written *Mia for;a ki ;enan kair;o* it will replace it with
*Μια φορά κι έναν καιρό*.

## Use
To use a script `#include` the `.ahk` file in your AutoHotKey definitions.
For example, add a line `#include greek-latin-fix.ahk`.
Remember to reload the AutoHotKey definitions.
To fix some incorrectly typed text, select it,
and press the corresponding shortcut
(for Greek-Latin mappings Ctrl-Alt-G).

## Operation
Code in this repository addresses the problem
by programming [AutoHotKey](https://www.autohotkey.com/) with
a script that fixes the selected text.
The script
* copies the selected text to the clipboard,
* obtains a copy of the clipboard (to minimize system calls),
* detects the direction of the desired mapping (Greek to Latin or Latin to Greek),
* converts sequences that include a stress dead key combination,
* converts all other characters,
* sets the clipboard to the mapped text, and
* pastes the text to the current selection.

## Contributing
The AHK script's creation is automated with a corresponding Python script.
This process can also be useful for text that is entered through
other switched keyboard layouts, such as Cyrillic or Hebrew.
Contributions through pull requests are welcomed!
