update50093
	"self new update50093"
	self withUpdateLog: '15658 Prepare FilePackageRemoval and FileContentsBrowser
	https://pharo.fogbugz.com/f/cases/15658'.
	self loadTogether: self script50093 merge: false.
	self flushCaches.
