update30835
	"self new update30835"
	self withUpdateLog: '13225 SpecInterpreter should not reset bindings
	https://pharo.fogbugz.com/f/cases/13225

'.
	self loadTogether: self script488 merge: false.
	self flushCaches.
