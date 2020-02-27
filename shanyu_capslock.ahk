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


; Make Win Key + Capslock work like Capslock (in case it's ever needed)
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return