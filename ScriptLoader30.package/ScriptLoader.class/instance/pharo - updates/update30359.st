update30359
	"self new update30359"
	self withUpdateLog: '- issue 2489 Strange Behavior of Rectangle Part Two
	https://pharo.fogbugz.com/default.asp?2489
	
- issue 11502 Override Class >> #setName:
	https://pharo.fogbugz.com/default.asp?11502
	
- issue 11505 Remove obsolete icons
	https://pharo.fogbugz.com/default.asp?11505'.
	self loadTogether: self script151 merge: false.
	Smalltalk ui theme icons initializeIcons.
	self flushCaches.
