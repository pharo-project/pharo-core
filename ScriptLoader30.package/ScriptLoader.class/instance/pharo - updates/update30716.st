update30716
	"self new update30716"
	self withUpdateLog: '12170 temp var definitions in optimized blocks wrongly compiled
	https://pharo.fogbugz.com/f/cases/12170

12695 InputWidget example broken
	https://pharo.fogbugz.com/f/cases/12695

'.
	self loadTogether: self script369 merge: false.
	self flushCaches.
