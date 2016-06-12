update60078
	"self new update60078"
	self withUpdateLog: '18413 disable code completion in comment pane
	https://pharo.fogbugz.com/f/cases/18413

18457 Allow # to be part of the string when searching senders and implementors
	https://pharo.fogbugz.com/f/cases/18457'.
	self loadTogether: self script60078 merge: false.
	self flushCaches.
