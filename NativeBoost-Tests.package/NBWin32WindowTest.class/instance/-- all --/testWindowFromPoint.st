testWindowFromPoint
	self skip. "fails on CI server"
	self assert: (NBWin32Window getWindowFromPoint: (NBWin32Point x: 100 y: 100)) isWindow