UseArrowKey := 1

#Persistent
SetCapsLockState, AlwaysOff

; Capslock + Esc (`)
CapsLock & Esc::Send {Blind}{`` Down}
CapsLock & Esc up::Send {Blind}{`` Up}

; Capslock + Backspace (Delete)
CapsLock & Backspace::Send {Blind}{Delete Down}
CapsLock & Backspace up::Send {Blind}{Delete Up}

; Capslock + hjkl (left, down, up, right)

Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}

Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}

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

; ; Arrow keys
; #RAlt::
;     UseArrowKey := UseArrowKey*(-1)


; RAlt::
;     If (UseArrowKey = 1)
;         Send, {Blind}{Left DownTemp}
;     Else 
;         Send, {RAlt DownTemp}
;     Return

; RAlt up::
;     If (UseArrowKey = 1)
;         Send, {Blind}{Left Up}
;     Else 
;         Send, {RAlt Up}
;     Return

; RWin::
;     If (UseArrowKey = 1)
;         Send, {Blind}{Down DownTemp}
;     Else 
;         Send, {RWin DownTemp}
;     Return

; RWin up::
;     If (UseArrowKey = 1)
;         Send, {Blind}{Down Up}
;     Else 
;         Send, {RWin Up}
;     Return


; RControl::
;     If (UseArrowKey = 1)
;         Send, {Blind}{RIGHT DownTemp}
;     Else 
;         Send, {RControl DownTemp}
;     Return

; RControl up::
;     If (UseArrowKey = 1)
;         Send, {Blind}{RIGHT Up}
;     Else 
;         Send, {RControl Up}
;     Return

; RShift::
;     If (UseArrowKey = 1)
;         Send, {Blind}{Up DownTemp}
;     Else 
;         Send, {RShift DownTemp}
;     Return

; RShift up::
;     If (UseArrowKey = 1) and (A_PriorKey = "RShift")
;         Send, {Blind}{Up Up}
;     Else 
;         Send, {RShift Up}
;     Return