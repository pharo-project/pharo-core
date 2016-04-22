makeCurrent
	| windowHandle |
	context ifNil: [ ^ false ].
	
	self checkThread.
	renderer clear. "Hack for using SDL2 renderers and OpenGL at the same time."
	windowHandle := window handle.
	windowHandle ifNil: [ ^ false ].
	(SDL2 glMakeCurrent: windowHandle context: context) == 0
		ifTrue:  [ ^ true ]
		ifFalse:  [ ^ false ]
	