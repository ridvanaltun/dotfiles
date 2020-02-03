#Persistent
#SingleInstance, force

DetectHiddenWindows, On

WinRestore, ahk_class ENMainFrame ;~ Un-minimise the window to prevent it being hidden again.
WinShow, ahk_class ENMainFrame ;~ Show EN window if hidden.

/*
WinRestore and WinShow are not strictly necessary as invoking an Evernote window(either by a shortcut or the tray icon) will show the window again.
It is included anyway for my peace of mind and will act on first running of the script.
*/


Loop,
{
Winget, state, MinMax, ahk_class ENMainFrame
If (state = "-1") ;~ Minimised
{
WinHide, ahk_class ENMainFrame
}
Sleep, 500 ; 500 ms - can be increased if wanted. A higher number increases the potential delay before window is hidden.
}