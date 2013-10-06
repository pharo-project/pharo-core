update30374
	"self new update30374"
	self withUpdateLog: '11433 Move ClassVars in Color referring to named colors to a color cache
	https://pharo.fogbugz.com/f/cases/11433
	
'.
	self loadTogether: self script166 merge: false.
	Color initialize.
	self flushCaches.
