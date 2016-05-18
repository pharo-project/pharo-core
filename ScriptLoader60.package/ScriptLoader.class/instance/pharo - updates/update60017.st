update60017
	"self new update60017"
	self withUpdateLog: '17451 Introducing Immutability
	https://pharo.fogbugz.com/f/cases/17451'.
	self loadTogether: self script60017 merge: false.
	self flushCaches.
