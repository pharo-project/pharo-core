update60014
	"self new update60014"
	self withUpdateLog: '18047 Use iconNamed: instead of relying on DNU [Spec]
	https://pharo.fogbugz.com/f/cases/18047'.
	self loadTogether: self script60014 merge: false.
	self flushCaches.
