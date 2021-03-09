#!/usr/bin/env bash
# Ctrl-Alt-G: Fix Greek text entered on Latin keyboard setting
# Auto-generated by greek-latin-fix.py
if ! type xsel; then
    notify-send "greek-latin-fix failed" "missing xsel"
    exit 1
fi
if type xdotool; then
    sleep 0.2
    xdotool key ctrl+c
    str="$(xsel -b -o)"
else
    str="$(xsel -o)"
fi
if [[ "$str" =~ ^[A-Za-z:\;\ ]+$ ]]; then
    str="${str//;a/ά}"
    str="${str//;e/έ}"
    str="${str//;h/ή}"
    str="${str//;i/ί}"
    str="${str//;o/ό}"
    str="${str//;y/ύ}"
    str="${str//;v/ώ}"
    str="${str//;A/Ά}"
    str="${str//;E/Έ}"
    str="${str//;H/Ή}"
    str="${str//;I/Ί}"
    str="${str//;O/Ό}"
    str="${str//;Y/Ύ}"
    str="${str//;V/Ώ}"
    str="${str//:i/ϊ}"
    str="${str//:y/ϋ}"
    str="${str//:I/Ϊ}"
    str="${str//:Y/Ϋ}"
    str="${str//a/α}"
    str="${str//b/β}"
    str="${str//c/ψ}"
    str="${str//d/δ}"
    str="${str//e/ε}"
    str="${str//f/φ}"
    str="${str//g/γ}"
    str="${str//h/η}"
    str="${str//i/ι}"
    str="${str//j/ξ}"
    str="${str//k/κ}"
    str="${str//l/λ}"
    str="${str//m/μ}"
    str="${str//n/ν}"
    str="${str//o/ο}"
    str="${str//p/π}"
    str="${str//q/;}"
    str="${str//r/ρ}"
    str="${str//s/σ}"
    str="${str//t/τ}"
    str="${str//u/θ}"
    str="${str//v/ω}"
    str="${str//w/ς}"
    str="${str//x/χ}"
    str="${str//y/υ}"
    str="${str//z/ζ}"
    str="${str//A/Α}"
    str="${str//B/Β}"
    str="${str//C/Ψ}"
    str="${str//D/Δ}"
    str="${str//E/Ε}"
    str="${str//F/Φ}"
    str="${str//G/Γ}"
    str="${str//H/Η}"
    str="${str//I/Ι}"
    str="${str//J/Ξ}"
    str="${str//K/Κ}"
    str="${str//L/Λ}"
    str="${str//M/Μ}"
    str="${str//N/Ν}"
    str="${str//O/Ο}"
    str="${str//P/Π}"
    str="${str//Q/;}"
    str="${str//R/Ρ}"
    str="${str//S/Σ}"
    str="${str//T/Τ}"
    str="${str//U/Θ}"
    str="${str//V/Ω}"
    str="${str//W/Σ}"
    str="${str//X/Χ}"
    str="${str//Y/Υ}"
    str="${str//Z/Ζ}"
else
    str="${str//α/a}"
    str="${str//β/b}"
    str="${str//ψ/c}"
    str="${str//δ/d}"
    str="${str//ε/e}"
    str="${str//φ/f}"
    str="${str//γ/g}"
    str="${str//η/h}"
    str="${str//ι/i}"
    str="${str//ξ/j}"
    str="${str//κ/k}"
    str="${str//λ/l}"
    str="${str//μ/m}"
    str="${str//ν/n}"
    str="${str//ο/o}"
    str="${str//π/p}"
    str="${str//;/q}"
    str="${str//ρ/r}"
    str="${str//σ/s}"
    str="${str//τ/t}"
    str="${str//θ/u}"
    str="${str//ω/v}"
    str="${str//ς/w}"
    str="${str//χ/x}"
    str="${str//υ/y}"
    str="${str//ζ/z}"
    str="${str//Α/A}"
    str="${str//Β/B}"
    str="${str//Ψ/C}"
    str="${str//Δ/D}"
    str="${str//Ε/E}"
    str="${str//Φ/F}"
    str="${str//Γ/G}"
    str="${str//Η/H}"
    str="${str//Ι/I}"
    str="${str//Ξ/J}"
    str="${str//Κ/K}"
    str="${str//Λ/L}"
    str="${str//Μ/M}"
    str="${str//Ν/N}"
    str="${str//Ο/O}"
    str="${str//Π/P}"
    str="${str//;/Q}"
    str="${str//Ρ/R}"
    str="${str//Σ/S}"
    str="${str//Τ/T}"
    str="${str//Θ/U}"
    str="${str//Ω/V}"
    str="${str//Σ/W}"
    str="${str//Χ/X}"
    str="${str//Υ/Y}"
    str="${str//Ζ/Z}"
fi
xsel -b -i <<< "$str"
if type xdotool; then
    sleep 0.2
    xdotool key ctrl+v
fi

