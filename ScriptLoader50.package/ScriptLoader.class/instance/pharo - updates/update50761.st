update50761
	"self new update50761"
	self withUpdateLog: '18757 Simple Shell Command Eval for 5.0
	https://pharo.fogbugz.com/f/cases/18757

18676 Endless loop parsing e-mail addresses containing an ampersand
	https://pharo.fogbugz.com/f/cases/18676

'.
	self loadTogether: self script50761 merge: false.
	self flushCaches.
self cleanRepositories.
