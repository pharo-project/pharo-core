update60478
	"self new update60478"
	self withUpdateLog: '19988 #testShouldGetUnresolvedDependencies can fail easily
	https://pharo.fogbugz.com/f/cases/19988'.
	self loadTogether: self script60478 merge: false.
	self flushCaches.
