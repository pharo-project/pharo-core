createWindowWithAttributes: attributes osWindow: osWindow
	| flags handle window glAttributes |
	flags := SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE.
	attributes fullscreen ifTrue: [ flags := flags | SDL_WINDOW_FULLSCREEN ].
	
	" Set the OpenGL attributes."
	glAttributes := attributes glAttributes.
	glAttributes ifNotNil: [ 
		flags := SDL_WINDOW_OPENGL.
		self setGLAttributes: glAttributes.
	].
	
	"Create the window"
	handle := SDL2 createWindow: attributes title
				x: attributes x
				y: attributes y
				width: attributes width 
				height: attributes height flags: flags.
	window := OSSDL2WindowHandle newWithHandle: handle attributes: attributes.
	window osWindow: osWindow.
	windowMap at: handle windowID put: window.
	^ window