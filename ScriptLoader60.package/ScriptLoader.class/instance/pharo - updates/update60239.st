update60239
	"self new update60239"
	self withUpdateLog: '11657 remove category from SyntaxError, do not request it in SyntaxErrorDebugger from exception
	https://pharo.fogbugz.com/f/cases/11657'.
	self loadTogether: self script60239 merge: false.
	self flushCaches.
