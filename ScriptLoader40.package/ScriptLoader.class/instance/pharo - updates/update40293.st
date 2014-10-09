update40293
	"self new update40293"
	self withUpdateLog: '14098 allClassesAndTraits significantly different from allClassesAndTraitsDo:
	https://pharo.fogbugz.com/f/cases/14098'.
	self loadTogether: self script293 merge: false.
	self flushCaches.
