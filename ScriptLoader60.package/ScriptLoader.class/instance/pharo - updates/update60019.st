update60019
	"self new update60019"
	self withUpdateLog: '18245 StringMorph and Label morph lack #themeChanged
	https://pharo.fogbugz.com/f/cases/18245'.
	self loadTogether: self script60019 merge: false.
	self flushCaches.
