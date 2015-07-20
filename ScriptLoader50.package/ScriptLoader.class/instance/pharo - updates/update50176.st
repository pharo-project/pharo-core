update50176
	"self new update50176"
	self withUpdateLog: '15998 Rename RPackageCreated into RPackageRegistered
	https://pharo.fogbugz.com/f/cases/15998

15997 Manifest storing/loading of metaclass is broken
	https://pharo.fogbugz.com/f/cases/15997

15393 Optimizing repeat
	https://pharo.fogbugz.com/f/cases/15393'.
	self loadTogether: self script50176 merge: false.
	self flushCaches.
