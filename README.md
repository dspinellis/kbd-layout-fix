# Fix text entered using an the wrong keyboard layout
To enter text in some languages via a keyboard you press a special key
combination to toggle the keyboard layout.
The keyboard layout context is typically kept separately for each window.
This is generally good, but forces you to remember (or check) the
layout every time you switch to another window.
If you forget to do that they text you type will come out as gibberish.

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

The AHK script's creation is automated with a corresponding Python script.
This process can also be useful for other text  that is entered through
switched keyboard layouts, such as Cyrillic or Hebrew.
Contributions through pull requests are welcomed!
