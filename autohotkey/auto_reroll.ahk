#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir% 
WinGet, wowid, List, World of Warcraft 
F1:: 
SendEactive := !SendEactive 
If SendEactive 
SetTimer Send5, 2200 
else 
SetTimer Send5, Off 
Return 
Send5: 
ControlSend,, 5, ahk_id %wowid1%
Return 