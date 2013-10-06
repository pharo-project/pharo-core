update30369
	"self new update30369"
	self withUpdateLog: '11487 Less failed block: First #failedDoit removal in new compiler
	https://pharo.fogbugz.com/f/cases/11487
	
11531 More refactorings: system should use new compiler API
	https://pharo.fogbugz.com/f/cases/11531
'.
	self loadTogether: self script161 merge: false.
	self flushCaches.
