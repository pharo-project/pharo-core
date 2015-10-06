update50363
	"self new update50363"
	self withUpdateLog: '16278 Viewing the hierarchy from Object or ProtoObject is sloow
	https://pharo.fogbugz.com/f/cases/16278

16716 fix testClassRespectsPolymorphismWithTrait
	https://pharo.fogbugz.com/f/cases/16716

16721 Comment of BlockClosure>>sourceNode is unclear
	https://pharo.fogbugz.com/f/cases/16721

'.
	self loadTogether: self script50363 merge: false.
	self flushCaches.
self cleanRepositories.
