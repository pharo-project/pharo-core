update40515
	"self new update40515"
	self withUpdateLog: '14977 Cleaning Spec: Part removing pragmas.
	https://pharo.fogbugz.com/f/cases/14977

'.
	self loadTogether: self script515 merge: false.
	self flushCaches.
self cleanRepositories.
