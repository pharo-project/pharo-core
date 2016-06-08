update60069
	"self new update60069"
	self withUpdateLog: '18428 Add SelectEntity to Spec
	https://pharo.fogbugz.com/f/cases/18428

18421 Fix Zinc-HTTP extensions capitalization
	https://pharo.fogbugz.com/f/cases/18421

18438 confusing error for variable refactoring
	https://pharo.fogbugz.com/f/cases/18438'.
	self loadTogether: self script60069 merge: false.
	self flushCaches.
