#Requires AutoHotkey v2.0
LCtrl & LShift::ExitApp
InstallMouseHook
Alt & c::
{
    ; Hotkey "Alt & c", "Off"
    toggled := True
    While(True) {
        if(GetKeyState("LButton", "P")) {
            Click "Down Left"
            Click "Up Left"
            sleep 1
        }
        if(GetKeyState("Alt & c")) {
            return
        }
    }
}