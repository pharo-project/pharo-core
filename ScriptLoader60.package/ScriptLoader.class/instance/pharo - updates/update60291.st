update60291
	"self new update60291"
	self withUpdateLog: '19338 Revert 18233 (improving Pragma API)
	https://pharo.fogbugz.com/f/cases/19338'.
	self loadTogether: self script60291 merge: false.
	
Smalltalk image recompile.
	self flushCaches.
