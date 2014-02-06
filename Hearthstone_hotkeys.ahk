#SingleInstance force ; Replace an existing script
SetDefaultMouseSpeed, 0 ; move mouse instantly

; Pass the turn
^Space:: ; Ctrl + Space
~MButton:: ; Middle mouse button
IfWinActive Hearthstone ahk_class UnityWndClass
{
	WinGetPos, Xpos, Ypos, Width, Height
	ButtonX := Round(Width * 0.8)
	ButtonY := Round(Height * 0.46)
	MouseGetPos, MouseX, MouseY
	BlockInput, On
	MouseMove, %ButtonX%, %ButtonY%
	Click
	Sleep, 10
	Click
	MouseMove, %MouseX%, %MouseY%
	BlockInput, Off
}
return

; Target enemy hero
^LButton:: ; Ctrl + Left mouse button
IfWinActive Hearthstone ahk_class UnityWndClass
{
	WinGetPos, Xpos, Ypos, Width, Height
	HeroX := Round(Width * 0.5)
	HeroY := Round(Height * 0.211)
	MouseGetPos, MouseX, MouseY
	BlockInput, On
	Click down
	sleep, 10
	Click down
	MouseMove, %HeroX%, %HeroY%, 5
	Sleep, 10
	Click up left
	; MouseClickDrag, L,,, HeroX, HeroY, 5 ; unreliable
	Sleep, 50
	MouseMove, %MouseX%, %MouseY%
	BlockInput, Off
}
return
