makeCurrent
	context ifNil: [ ^ false ].
	
	self checkThread.
	renderer clear. "Hack for using SDL2 renderers and OpenGL at the same time."
	(SDL2 glMakeCurrent: window handle context: context) == 0
		ifTrue:  [ ^ true ]
		ifFalse:  [ ^ false ]
	