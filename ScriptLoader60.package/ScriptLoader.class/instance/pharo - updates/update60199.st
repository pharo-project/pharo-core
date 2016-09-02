update60199
	"self new update60199"
	self withUpdateLog: '19021 RB forgets to unmark removedClasses
	https://pharo.fogbugz.com/f/cases/19021

10025 MethodDictionary at:put: and #flushCache
	https://pharo.fogbugz.com/f/cases/10025'.
	self loadTogether: self script60199 merge: false.
	self flushCaches.
