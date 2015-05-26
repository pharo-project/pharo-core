getWindowRectangle

	|rect|
	rect := NBWin32Rectangle new.
	^(self   getWindowRect: rect)
		ifTrue: [ rect ]
		ifFalse: [ self error: 'failed' ]
	