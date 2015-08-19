visitWindowEvent: windowEvent
	| osEvent |
	
	windowEvent event = SDL_WINDOWEVENT_EXPOSED ifTrue: [
		^ ((OSWindowExposeEvent for: osWindow) timeStamp: windowEvent timestamp)deliver.
	].
	windowEvent event = SDL_WINDOWEVENT_CLOSE ifTrue: [ 
		^ (OSWindowCloseEvent for: osWindow) deliver.
	].
	windowEvent event = SDL_WINDOWEVENT_MOVED ifTrue: [ 
		^ (OSWindowMoveEvent for: osWindow) deliver
	].
	windowEvent event = SDL_WINDOWEVENT_RESIZED ifTrue: [ 
		osEvent := OSWindowResizeEvent for: osWindow.
		osEvent width: windowEvent data1.
		osEvent height: windowEvent data2.
		^ osEvent deliver.
	].
	windowEvent event = SDL_WINDOWEVENT_ENTER ifTrue: [ 
		^ (OSWindowMouseEnterEvent for: osWindow) deliver
	].
	windowEvent event = SDL_WINDOWEVENT_LEAVE ifTrue: [ 
		^ (OSWindowMouseLeaveEvent for: osWindow) deliver
	].
	windowEvent event = SDL_WINDOWEVENT_FOCUS_GAINED ifTrue: [ 
		^ (OSWindowFocusInEvent for: osWindow) deliver
	].
	windowEvent event = SDL_WINDOWEVENT_FOCUS_LOST ifTrue: [ 
		^ (OSWindowFocusOutEvent for: osWindow) deliver
	].
