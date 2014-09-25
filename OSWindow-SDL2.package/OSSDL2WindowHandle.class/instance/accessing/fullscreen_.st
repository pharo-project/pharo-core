fullscreen: aBoolean
	aBoolean ifTrue: [
		handle fullscreen: SDL_WINDOW_FULLSCREEN
	] ifFalse: [ 
		handle fullscreen: 0
	]