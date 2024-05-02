#Requires AutoHotkey v2.0
Esc::ExitApp
InstallMouseHook

#MaxThreadsPerHotkey 3
Alt & c::
{
    static toggle := false
    if toggle  ; This means an underlying thread is already running the loop below.
    {
        toggle := false  ; Signal that thread's loop to stop.
        return  ; End this thread so that the one underneath will resume and see the change made by the line above.
    }
    ; Otherwise:
    toggle := true
    Loop
    {
        ; The next four lines are the action you want to repeat (update them to suit your preferences):
        if(GetKeyState("LButton", "P")) {
            Click "Down Left"
            Click "Up Left"
            sleep 1
        }
        ; But leave the rest b+elow unchanged.
        if not toggle  ; The user signaled the loop to stop by pressing the hotkey again.
            break  ; Break out of this loop.
    }
    toggle := false  ; Reset in preparation for the next press of this hotkey.
}
#MaxThreadsPerHotkey 1