testIsVisible
	self skip. "fails on CI server"
	self assert: NBWin32Window getDesktopWindow isVisible