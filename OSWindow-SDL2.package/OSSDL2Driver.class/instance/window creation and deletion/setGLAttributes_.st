setGLAttributes: glAttributes
	SDL2 glSetAttribute: SDL_GL_RED_SIZE value: glAttributes redSize.
	SDL2 glSetAttribute: SDL_GL_BLUE_SIZE value: glAttributes blueSize.
	SDL2 glSetAttribute: SDL_GL_GREEN_SIZE value: glAttributes greenSize.
	SDL2 glSetAttribute: SDL_GL_ALPHA_SIZE value: glAttributes alphaSize.
	SDL2 glSetAttribute: SDL_GL_DEPTH_SIZE value: glAttributes depthSize.
	SDL2 glSetAttribute: SDL_GL_STENCIL_SIZE value: glAttributes stencilSize.
	SDL2 glSetAttribute: SDL_GL_DOUBLEBUFFER value: glAttributes doubleBuffer.