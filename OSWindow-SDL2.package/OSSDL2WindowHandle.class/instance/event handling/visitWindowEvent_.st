visitWindowEvent: windowEvent
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
		^ (OSWindowResizeEvent for: osWindow) deliver
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
