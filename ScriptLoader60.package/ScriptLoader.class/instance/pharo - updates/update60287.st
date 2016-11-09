update60287
	"self new update60287"
	self withUpdateLog: '14376 Make Nautilus to automatically categorize new methods (if needed) and remove empty protocols
	https://pharo.fogbugz.com/f/cases/14376'.
	self loadTogether: self script60287 merge: false.
	self flushCaches.
