update60044
	"self new update60044"
	self withUpdateLog: '17696 RBParser should not allow variable names for pragma arguments
	https://pharo.fogbugz.com/f/cases/17696'.
	self loadTogether: self script60044 merge: false.
	self flushCaches.
