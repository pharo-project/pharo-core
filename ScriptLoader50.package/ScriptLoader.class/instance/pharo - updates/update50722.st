update50722
	"self new update50722"
	self withUpdateLog: '18109 EyeInspector has correct syntax highlighting
	https://pharo.fogbugz.com/f/cases/18109

18110 Support added for using an OpenGL context with multiples windows.
	https://pharo.fogbugz.com/f/cases/18110'.
	self loadTogether: self script50722 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.2.11'.
SDL2Constants initialize . SDL_Event initialize .
	self flushCaches.
