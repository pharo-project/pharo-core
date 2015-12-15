update50499
	"self new update50499"
	Smalltalk removeFromStartUpList: ShortRunArray.
Smalltalk 
	removeFromStartUpList: ExternalObject;
	addToStartUpList: ExternalObject before: FFIMethodRegistry.
	self withUpdateLog: '17241 ffi-nb is not cleaning compiled methods. then they fail when platform changes
	https://pharo.fogbugz.com/f/cases/17241

'.
	self loadTogether: self script50499 merge: false.
	self flushCaches.
self cleanRepositories.
