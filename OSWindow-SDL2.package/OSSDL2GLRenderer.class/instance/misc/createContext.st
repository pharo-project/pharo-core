createContext
	self onRenderThreadBlocking: [
		renderer := window handle createDefaultRenderer.
		context := SDL2 glCreateContext: window handle.
	]
