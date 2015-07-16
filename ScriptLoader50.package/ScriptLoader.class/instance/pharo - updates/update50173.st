update50173
	"self new update50173"
	self withUpdateLog: '15985 Bottom Plugin takes too much space
	https://pharo.fogbugz.com/f/cases/15985

15986 implement optionCompileOnLinkInstallation
	https://pharo.fogbugz.com/f/cases/15986

15988 add catalog command line handler
	https://pharo.fogbugz.com/f/cases/15988'.
	self loadTogether: self script50173 merge: false.
	self loadConfiguration: 'Catalog' version: '0.6'.self flushCaches.
