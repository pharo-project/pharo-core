update50710
	"self new update50710"
	self withUpdateLog: '18057 Two tests for OSWindow now failing on Linux and Win
	https://pharo.fogbugz.com/f/cases/18057'.
	self loadTogether: self script50710 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.2.9'.
SDL2Constants initialize. SDL_Event initialize.
	self flushCaches.
