#!/usr/bin/env python3
#
# Copyright 2020 Diomidis Spinellis
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

"""
Generate an AutoHotKey script for correcting Greek or Latin text
entered using the wrong keyboard layout.
"""


def single_key_replace(source, target):
    """Create a set of replacements for single characters"""
    for i in range(0, len(source)):
        print(f'        str := StrReplace(str, "{source[i]}", "{target[i]}")')


def dead_key_replace(dead, source, target):
    """Create a set of replacements for the specified dead key characters"""
    for i in range(0, len(source)):
        print(f'        str := StrReplace(str, "{dead}{source[i]}",' +
              f'"{target[i]}")')


def main():
    """
    Generate the AutoHotKey script on the standard output
    """
    # Include a BOM to allow AHK to recognize the text as UTF-8
    print("""\ufeff
; Ctrl-Alt-G: Fix Greek text entered on Latin keyboard setting
; Auto-generated by greek-latin-fix.py
^!G::
    Clipboard := ""
    Send ^c
    ClipWait, 0
    str := Clipboard
    StringCaseSense, On
    if RegExMatch(str, "[a-zA-Z]") != 0 {""")

    latin_no_shift = 'abcdefghijklmnopqrstuvwxyz'
    greek_no_shift = 'αβψδεφγηιξκλμνοπ;ρστθωςχυζ'

    latin_shift = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    greek_shift = 'ΑΒΨΔΕΦΓΗΙΞΚΛΜΝΟΠ;ΡΣΤΘΩΣΧΥΖ'

    # Replace English with Greek
    dead_key_replace(";", 'aehioyv', 'άέήίόύώ')
    dead_key_replace(";", 'AEHIOYV', 'ΆΈΉΊΌΎΏ')
    dead_key_replace(":", 'iy', 'ϊϋ')
    dead_key_replace(":", 'IY', 'ΪΫ')

    single_key_replace(latin_no_shift, greek_no_shift)
    single_key_replace(latin_shift, greek_shift)

    print("    } else {")
    # Replace Greek with English

    single_key_replace(greek_no_shift, latin_no_shift)
    single_key_replace(greek_shift, latin_shift)

    print("""
    }
    Clipboard := str
    Send ^v
    return
""")


if __name__ == "__main__":
    main()
