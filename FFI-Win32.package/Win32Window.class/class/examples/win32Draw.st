win32Draw "Win32Window win32Draw"
	"Draw a bunch of lines using the Windows API"
	| hWnd hDC pt |
	hWnd := Win32Window getFocus.
	hDC := hWnd getDC.
	hDC moveTo: (hWnd screenToClient: Win32Point getCursorPos).
	[Sensor anyButtonPressed] whileFalse:[
		pt := Win32Point getCursorPos.
		hWnd screenToClient: pt.
		hDC lineTo: pt.
	].
	hWnd releaseDC: hDC.
	Display forceToScreen.