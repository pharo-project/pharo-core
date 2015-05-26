swapBuffers
	self checkThread.
	SDL2 glSwapWindow: window handle.