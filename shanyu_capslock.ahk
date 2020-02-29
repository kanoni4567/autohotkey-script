UseArrowKey := 1

#Persistent
SetCapsLockState, AlwaysOff

; Capslock + Esc (`)
CapsLock & Esc::Send {Blind}{`` Down}
CapsLock & Esc up::Send {Blind}{`` Up}

; Capslock + Backspace (Delete)
CapsLock & Backspace::Send {Blind}{Delete Down}
CapsLock & Backspace up::Send {Blind}{Delete Up}

; Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}


; Capslock + uohy (pgdown, pgup, home, end)

Capslock & u::SendInput {Blind}{Home Down}
Capslock & u up::SendInput {Blind}{Home Up}

Capslock & o::SendInput {Blind}{End Down}
Capslock & o up::SendInput {Blind}{End Up}

Capslock & y::SendInput {Blind}{PgUp Down}
Capslock & y up::SendInput {Blind}{PgUp Up}

Capslock & h::SendInput {Blind}{PgDn Down}
Capslock & h up::SendInput {Blind}{PgDn Up}


; Capslock + TAB/q (prev/next tab)

Capslock & q::SendInput {Ctrl Down}{Tab Down}
Capslock & q up::SendInput {Ctrl Up}{Tab Up}
Capslock & Tab::SendInput {Ctrl Down}{Shift Down}{Tab Down}
Capslock & Tab up::SendInput {Ctrl Up}{Shift Up}{Tab Up}

// Capslock + number keys equal function keys (F1-F10)

Capslock & 1::SendInput {Blind}{F1}
Capslock & 2::SendInput {Blind}{F2}
Capslock & 3::SendInput {Blind}{F3}
Capslock & 4::SendInput {Blind}{F4}
Capslock & 5::SendInput {Blind}{F5}
Capslock & 6::SendInput {Blind}{F6}
Capslock & 7::SendInput {Blind}{F7}
Capslock & 8::SendInput {Blind}{F8}
Capslock & 9::SendInput {Blind}{F9}
Capslock & 0::SendInput {Blind}{F10}
Capslock & -::SendInput {Blind}{F11}
Capslock & =::SendInput {Blind}{F12}

; Make Win Key + Capslock work like Capslock (in case it's ever needed)
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

; Arrow keys
#RAlt::
    UseArrowKey := UseArrowKey*(-1)

RAlt::
    If (UseArrowKey = 1)
        Send, {LEFT}
    Else 
        Send, {RAlt}
    Return

RWin::
    If (UseArrowKey = 1)
        Send, {DOWN}
    Else
        Send, {RWin}
    Return

RControl::
    If (UseArrowKey = 1)
        Send, {RIGHT}
    Else 
        Send, {RControl}
    Return

RShift Up::
    If (UseArrowKey = 1) and (A_PriorKey = "RShift")
        Send, {Up}
    Else 
        Send, {RShift}
    Return