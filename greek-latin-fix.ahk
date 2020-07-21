﻿
; Ctrl-Alt-G: Fix Greek text entered on Latin keyboard setting
; Auto-generated by greek-latin-fix.py
^!G::
    Clipboard := ""
    Send ^c
    ClipWait, 0
    str := Clipboard
    StringCaseSense, On
    if RegExMatch(str, "[a-zA-Z]") != 0 {
        str := StrReplace(str, ";a","ά")
        str := StrReplace(str, ";e","έ")
        str := StrReplace(str, ";h","ή")
        str := StrReplace(str, ";i","ί")
        str := StrReplace(str, ";o","ό")
        str := StrReplace(str, ";y","ύ")
        str := StrReplace(str, ";v","ώ")
        str := StrReplace(str, ";A","Ά")
        str := StrReplace(str, ";E","Έ")
        str := StrReplace(str, ";H","Ή")
        str := StrReplace(str, ";I","Ί")
        str := StrReplace(str, ";O","Ό")
        str := StrReplace(str, ";Y","Ύ")
        str := StrReplace(str, ";V","Ώ")
        str := StrReplace(str, ":i","ϊ")
        str := StrReplace(str, ":y","ϋ")
        str := StrReplace(str, ":I","Ϊ")
        str := StrReplace(str, ":Y","Ϋ")
        str := StrReplace(str, "a", "α")
        str := StrReplace(str, "b", "β")
        str := StrReplace(str, "c", "ψ")
        str := StrReplace(str, "d", "δ")
        str := StrReplace(str, "e", "ε")
        str := StrReplace(str, "f", "φ")
        str := StrReplace(str, "g", "γ")
        str := StrReplace(str, "h", "η")
        str := StrReplace(str, "i", "ι")
        str := StrReplace(str, "j", "ξ")
        str := StrReplace(str, "k", "κ")
        str := StrReplace(str, "l", "λ")
        str := StrReplace(str, "m", "μ")
        str := StrReplace(str, "n", "ν")
        str := StrReplace(str, "o", "ο")
        str := StrReplace(str, "p", "π")
        str := StrReplace(str, "q", ";")
        str := StrReplace(str, "r", "ρ")
        str := StrReplace(str, "s", "σ")
        str := StrReplace(str, "t", "τ")
        str := StrReplace(str, "u", "θ")
        str := StrReplace(str, "v", "ω")
        str := StrReplace(str, "w", "ς")
        str := StrReplace(str, "x", "χ")
        str := StrReplace(str, "y", "υ")
        str := StrReplace(str, "z", "ζ")
        str := StrReplace(str, "A", "Α")
        str := StrReplace(str, "B", "Β")
        str := StrReplace(str, "C", "Ψ")
        str := StrReplace(str, "D", "Δ")
        str := StrReplace(str, "E", "Ε")
        str := StrReplace(str, "F", "Φ")
        str := StrReplace(str, "G", "Γ")
        str := StrReplace(str, "H", "Η")
        str := StrReplace(str, "I", "Ι")
        str := StrReplace(str, "J", "Ξ")
        str := StrReplace(str, "K", "Κ")
        str := StrReplace(str, "L", "Λ")
        str := StrReplace(str, "M", "Μ")
        str := StrReplace(str, "N", "Ν")
        str := StrReplace(str, "O", "Ο")
        str := StrReplace(str, "P", "Π")
        str := StrReplace(str, "Q", ";")
        str := StrReplace(str, "R", "Ρ")
        str := StrReplace(str, "S", "Σ")
        str := StrReplace(str, "T", "Τ")
        str := StrReplace(str, "U", "Θ")
        str := StrReplace(str, "V", "Ω")
        str := StrReplace(str, "W", "Σ")
        str := StrReplace(str, "X", "Χ")
        str := StrReplace(str, "Y", "Υ")
        str := StrReplace(str, "Z", "Ζ")
    } else {
        str := StrReplace(str, "α", "a")
        str := StrReplace(str, "β", "b")
        str := StrReplace(str, "ψ", "c")
        str := StrReplace(str, "δ", "d")
        str := StrReplace(str, "ε", "e")
        str := StrReplace(str, "φ", "f")
        str := StrReplace(str, "γ", "g")
        str := StrReplace(str, "η", "h")
        str := StrReplace(str, "ι", "i")
        str := StrReplace(str, "ξ", "j")
        str := StrReplace(str, "κ", "k")
        str := StrReplace(str, "λ", "l")
        str := StrReplace(str, "μ", "m")
        str := StrReplace(str, "ν", "n")
        str := StrReplace(str, "ο", "o")
        str := StrReplace(str, "π", "p")
        str := StrReplace(str, ";", "q")
        str := StrReplace(str, "ρ", "r")
        str := StrReplace(str, "σ", "s")
        str := StrReplace(str, "τ", "t")
        str := StrReplace(str, "θ", "u")
        str := StrReplace(str, "ω", "v")
        str := StrReplace(str, "ς", "w")
        str := StrReplace(str, "χ", "x")
        str := StrReplace(str, "υ", "y")
        str := StrReplace(str, "ζ", "z")
        str := StrReplace(str, "Α", "A")
        str := StrReplace(str, "Β", "B")
        str := StrReplace(str, "Ψ", "C")
        str := StrReplace(str, "Δ", "D")
        str := StrReplace(str, "Ε", "E")
        str := StrReplace(str, "Φ", "F")
        str := StrReplace(str, "Γ", "G")
        str := StrReplace(str, "Η", "H")
        str := StrReplace(str, "Ι", "I")
        str := StrReplace(str, "Ξ", "J")
        str := StrReplace(str, "Κ", "K")
        str := StrReplace(str, "Λ", "L")
        str := StrReplace(str, "Μ", "M")
        str := StrReplace(str, "Ν", "N")
        str := StrReplace(str, "Ο", "O")
        str := StrReplace(str, "Π", "P")
        str := StrReplace(str, ";", "Q")
        str := StrReplace(str, "Ρ", "R")
        str := StrReplace(str, "Σ", "S")
        str := StrReplace(str, "Τ", "T")
        str := StrReplace(str, "Θ", "U")
        str := StrReplace(str, "Ω", "V")
        str := StrReplace(str, "Σ", "W")
        str := StrReplace(str, "Χ", "X")
        str := StrReplace(str, "Υ", "Y")
        str := StrReplace(str, "Ζ", "Z")

    }
    Clipboard := str
    Send ^v
    return

