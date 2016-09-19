update60231
	"self new update60231"
	self withUpdateLog: '19110 DNU on menu counter
	https://pharo.fogbugz.com/f/cases/19110

19091 Problem adding breakpoint through suggestions
	https://pharo.fogbugz.com/f/cases/19091

19108 Logging error stack should not hang image and prevent opening debugger 
	https://pharo.fogbugz.com/f/cases/19108'.
	self loadTogether: self script60231 merge: false.
	self flushCaches.
