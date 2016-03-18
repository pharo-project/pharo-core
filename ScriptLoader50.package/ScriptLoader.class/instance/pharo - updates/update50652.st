update50652
	"self new update50652"
	self withUpdateLog: '17843 Changes Browser doesnt recover changes in correct order
	https://pharo.fogbugz.com/f/cases/17843

17750 Extend CollectionValueHolder with ValueAdded/Removed/Changed
	https://pharo.fogbugz.com/f/cases/17750'.
	self loadTogether: self script50652 merge: false.
	self flushCaches.
