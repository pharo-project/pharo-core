update60051
	"self new update60051"
	self withUpdateLog: '18369 Detection lost changes should not fail when epic directory not exists
	https://pharo.fogbugz.com/f/cases/18369'.
	self loadTogether: self script60051 merge: false.
	self flushCaches.
