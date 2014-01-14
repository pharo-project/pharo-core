testInstanceCreation
	|p|
	p := (NBWin32Point x: 1 y: 5).
	self assert: p x = 1.
	self assert: p y = 5